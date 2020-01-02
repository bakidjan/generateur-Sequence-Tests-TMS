# -*- coding: utf-8 -*-
"""
Created on Fri Jul 19 13:40:34 2019

@author: abdiallo
"""

import os
import pandas as pd
import numpy as np




#access path
path_procedure = "./data/Scénarios.xlsx"
path_librairie_tcl = "./data/Librairie.tcl"
path_outputFile_tcl = "./data/OutPoutFile.tcl"

#retrieves a list containing the names of the procedures rows
def findProcedureName(row):
    procedureFinded = row.split(' ')
    if procedureFinded[0] == 'proc':
        return procedureFinded[1]
    else:
        return ''
 
    
# retrieves a list containing the contents of the output of the procedures 
def findProcedureOutPut(row):
    procedureFinded = row.split(" ",1)
    if procedureFinded[0] == "\tputs":
        return procedureFinded[1]
    else:
        return ""

#Look for the name of the procedure and make a correspondence with the output messages    
def matchProcedure(val, df):
    if val in df.procedureName.tolist():
        return df[df.procedureName == val]["procedureName"].iloc[0]
    else:
        return 0#np.nan
    
def outputfunction(val,df):
    if matchProcedure(val[0],df) != 0:
        if (val[1] != np.nan) and (val[2] != np.nan):
            return (matchProcedure(val[0],df),   val[1] , val[2])
    else:
        return np.nan
    
#Read excel file
procedureExcel = pd.read_excel(path_procedure,sheet_name ="Endurance",skiprows = 2, quoting=3)

#Read the tcl file
with open(path_librairie_tcl) as librairieTcl:
    librairieTcl = librairieTcl.read()


#Creation and storage of the list of procedure names   
listProcedureName = []

#Creation and storage of the list of procedure outpout
listProcedureOutPut = []
    

librairieTcl = librairieTcl.split('\n')
for row in  librairieTcl:
    if len(findProcedureName(row)) > 0:
        listProcedureName.append(findProcedureName(row))
    if len(findProcedureOutPut(row)) > 0:
        listProcedureOutPut.append(findProcedureOutPut(row))
        
        
#creation of the dataframe, a table composed of the list of procedure names 
#and the output of the message.
#transposed from the matrix to recurate the output to the desired format
df_librairieTcl = pd.DataFrame(np.array(listProcedureName).T, columns = ['procedureName'])


#find out if the action of the procedure exists, compare in the matrix previously 
#create if the procedure exists also in this matrix
out = procedureExcel[["Action ","Parametre", "Nouvellevaleur"]].apply(lambda val: outputfunction(val, df_librairieTcl),axis = 1)


#Drop the rows where at least one element is missing.
#Keep the DataFrame with valid entries in the same variable.
#print(out)
out.dropna(inplace = True)

out = out.tolist()

#Retrieves the list above and formats it for writing the tcl output
outpoutTCL = ''.join(str(out)).replace(", ('", '\n').replace("', '", ' "').replace("',", '"').replace("nan)", "").replace('" nan,', "").replace(")", "").replace('t"', "t").replace("[('", "").replace(",", "").replace("]", "")


#writing the output file in tcl format
with open(path_outputFile_tcl, "w") as outpoutTclFile:
    outpoutTclFile.write(outpoutTCL) 


    



    

    
    
    
    
    
    
    
    
