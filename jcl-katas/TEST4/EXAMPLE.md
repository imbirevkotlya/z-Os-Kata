# Sequential dataset sorting with DFSORT utility

## Simple kata to work with DFSORT utility from JCL to sort the records

### Acknowledge

1. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
2. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
3. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
4. DFSORT Introduction Tutorial [Mainframegurukul](http://www.mainframegurukul.com/srcsinc/drona/programming/languages/jcl/jcl.sort.html)
5. DFSORT SYSIN Commands tutorial with parameters description [Mainframe Tech Help](https://www.mainframestechhelp.com/utilities/sort/dfsort-sort-fields.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST4 source

- Put the code from TEST4.jcl source to the dataset member

- Edit the code with the sorting info, that you need

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST4 job name and see the results