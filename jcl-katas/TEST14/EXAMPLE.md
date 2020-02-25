# JCL + COBOL #4

## Simple kata to run COBOL source with input/output datasets

#### Description

IGYWCLG - is a IBM defined 3 step procedure: compile, link, go. 

More info here - [IBM Documentation](https://www.ibm.com/support/knowledgecenter/en/SS6SG3_4.2.0/com.ibm.entcobol.doc_4.2/PGandLR/ref/rpmvs07.htm)

Using STEPNAME.JCLOPTIONNAME (ex. GO.SYSIN) you can define different options for the procedure steps.

Using GO.SYSIN you can provide the incoming arguments for the COBOL source (more info can be found [here](http://www.simotime.com/cblpar01.htm)


### Acknowledges

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. COBOL + JCL input/output explanation: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/zosbasics/com.ibm.zos.zappldev/zappldev_37.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST# source

- Put the code from TEST#.jcl source to the dataset member

- Create input/output datasets for your pgm

- Create COBOL library (if needed) and code there your COBOL source

- Edit the JCL code with the changes, that you need

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST# job name and see the results