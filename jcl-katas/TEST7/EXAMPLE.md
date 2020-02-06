# JCL conditions #3

## Simple kata to work with JCL IF ELSE statements

### Acknowledge

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. JCL IF statements explanation [MainframeTechHelp](https://www.mainframestechhelp.com/tutorials/jcl/jcl-if-statement.htm)
5. JCL COND processing [TutorialsPoint](https://www.tutorialspoint.com/jcl/jcl_conditional_processing.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST7 source

- Put the code from TEST7.jcl source to the dataset member

- Edit the code with the changes, that you need

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST7 job name and see the results