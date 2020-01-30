# Sequential dataset copying with IEBGENER utility

## Simple kata to work with IEBGENER utility from JCL to copy sequential datasets

### Acknowledge

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. IBM JCL examples [IBM](https://www.ibm.com/support/knowledgecenter/zosbasics/com.ibm.zos.zjcl/zjclt_smplcopyseqds.htm)
5. IEBGENER utility [Mainframe TechHelp](https://www.mainframestechhelp.com/utilities/iebgener/iebgener-performing-tasks.htm)
6. Dataset DISPosition parameter [IBM](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ieab600/iea3b6_Subparameter_definition14.htm)
7. Dataset SPACE parameter [IBM](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.4.0/com.ibm.zos.v2r4.ieab600/iea3b6_Subparameter_definition52.htm)
8. Dataset DCB parameter [IBM](https://www.ibm.com/support/knowledgecenter/en/SSLTBW_2.2.0/com.ibm.zos.v2r2.ieab600/dcbsub.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST3 source

- Put the code from TEST3.jcl source to the dataset member

- Edit the code with the additional information knowledge below

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST3 job name and see the results
