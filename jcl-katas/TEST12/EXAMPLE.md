# JCL + COBOL #2

## Simple kata to run COBOL (or any other) executable source

### Acknowledges

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. Example of executing COBOL with JCL [TutorialsPoint](https://www.tutorialspoint.com/jcl/jcl_run_cobol_programs.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library dataset for the COBOL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST# source

- Create a new library member for the COBOL TEST# source

- Put the code from TEST#.jcl source to the dataset member

- Write some simple COBOL code to compile

- Compile and link COBOL sources with prev examples

- Edit the JCL code with the changes, that you need

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST# job name and see the results