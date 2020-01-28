# Dataset Displaying using IDCAMS

## Simple kata to work with IDCAMS utility from JCL using PRINT command

### Acknowledge

1. PRINT IDCAMS tutorial and syntax: [MainframeTechHelp](https://www.mainframestechhelp.com/utilities/idcams/idcams-print.htm)
2. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
3. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
4. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST1 source

- Put the code from TEST1.jcl source to the dataset member

- Edit the code with the desired dataset name in the block INDATASET

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST1 job name and see the results

#### Additional information

Library parameters for the new dataset (for JCL sources):

ORGANIZATION: PO

RECORD FORMAT: FB

RECORD LENGTH: 80

BLOCK SIZE: 800

DIRECTORY BLOCKS: 10

DATASET NAME TYPE: LIBRARY

PRIMARY QUANTITY: 100

SECONDARY QUANTITY: 100

SPACE UNITS: BLOCK

Hotkey command to hilight JCL syntax in ISPF: HILIGHT JCL
