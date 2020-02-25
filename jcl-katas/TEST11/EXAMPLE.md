# JCL + COBOL #1

## Simple kata to compile and link COBOL source

#### Description

Working with COBOL in JCL usually contains several steps: compilation, linking, running. Of course, IBM has provided several defined JCL procedures to execute these steps, so you can just a little customize them.

#### Additional description

IGY### - is a library for the COBOL compiler, where ### is a compiler version (ex. IGY620 - is a 6.2 version).

OBJ - is a 'serious' name for the compiled sources (basically assembler)

LOAD - is a 'serious' name for the executable source (like .exe and so on), we just showing off a little bit :)

Module - is a serious name for the one program unit. The synonyms are class (in Java), procedure (in COBOL) and so on.

By the way, a lot of IBM terms are so familiar to you, but they are so 'serious' to make these products more presentable. :)

### Acknowledges

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. IBM Procedure description [IBM](https://www.ibm.com/support/knowledgecenter/zosbasics/com.ibm.zos.zappldev/zappldev_115.htm)
5. **Where to find the JCL PROC body to figure out what's going on:** SDSF (after execution), system/custom libraries, like: SVTSC.PROCLIB, SYS1.PROCLIB and etc.

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library dataset for the COBOL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST# source

- Create a new library member for the COBOL TEST# source

- Put the code from TEST#.jcl source to the dataset member

- Write some simple COBOL code to compile

- Edit the code with the changes, that you need

- Save the changes with SAVE command

- Allocate the OBJ and LOAD Libraries (where you need to put your sources)

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST# job name and see the results

### Dataset allocation parameters for the OBJ and LOAD modules

**LOAD Library:**

- Organization - PO

- RF - U

- DSNTYPE - LIBRARY

- RECL - 80

- BLKSIZE - 800

- Directory blocks - 10

**OBJ Library:**

- Organization - PO

- RF - FB

- DSNTYPE - LIBRARY

- RECL - 80

- BLKSIZE - 800

- Directory blocks - 10
