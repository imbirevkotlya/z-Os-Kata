# JCL Procedures #3

## Simple kata to work with catalogued procedures with call example with PROC parameters override

#### Description
Simple IBM defined procedure call with LNGPRFX parameter override

### Acknowledges

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. JCL PROCLIB examples with explanations [MainframeTechHelp](https://www.mainframestechhelp.com/tutorials/jcl/jcl-proclib.htm)
5. JCL procedures explanation in popular forum [IBM mainframes](http://ibmmainframes.com/about2675.html)
6. JCL procedures overview with examples [TutorialsPoint](https://www.tutorialspoint.com/jcl/jcl_procedures.htm)
7. IBM Procedure description [IBM Documentation](https://www.ibm.com/support/knowledgecenter/zosbasics/com.ibm.zos.zappldev/zappldev_113.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST# source

- Put the code from TEST#.jcl source to the dataset member

- Put the SORTPROC.jcl source into your PROCLIB and specify the YOUR_PROCLIB in the TEST#.jcl

- Edit the code with the changes, that you need

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST# job name and see the results