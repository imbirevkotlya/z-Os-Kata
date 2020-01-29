# KSDS Cluster Creation using IDCAMS

## Simple kata to work with IDCAMS utility from JCL using DEFINE CLUSTER command

### Acknowledge

1. DEFINE CLUSTER COMMAND [TutorialsPoint](https://www.tutorialspoint.com/vsam/vsam_cluster.htm)
2. TSO SUBMIT JCL command syntax: [IBM Documentation](https://www.ibm.com/support/knowledgecenter/SSLTBW_2.2.0/com.ibm.zos.v2r2.ikjc500/ikj2l2_SUBMIT_command_syntax.htm)
3. ISPF edit dataset tutorial: [Youtube](https://www.youtube.com/watch?v=-FUNDgcDRWk) 
4. ISPF create dataset tutorial: [Youtube](https://www.youtube.com/watch?v=aZRWZ_HypRQ&t=332s)
5. VSAM Cluster parameters and definition [Mainframe TechHelp](https://www.mainframestechhelp.com/tutorials/vsam/vsam-introduction.htm)

### Steps to reproduce

- Activate the ISPF session

- Create a new library dataset for the JCL sources (or use your favorite existing one)

- Create a new library member for the JCL TEST1 source

- Put the code from TEST1.jcl source to the dataset member

- Edit the code with the additional information knowledge below

- Save the changes with SAVE command

- Submit the job with SUB command

- Press Enter, until you got the red message on the screen, indicates, that the job finished

- Go to the SDSF utility, Output queue, TEST2 job name and see the results

#### Additional information

**Library parameters for the new dataset (for JCL sources):**

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

**VSAM KSDS PARAMS for the new cluster: (just an example)**

TRACKS (1 1)
KEYS (6 1)
CISZ(4096)
INDEXED
VOLUMES(VOLUMENAME)

**JCL Job PARAMS definition**

(USERID) - accounting information, basically can be a userid

'NAME' - accounting information, basically can be a programmer name

CLASS - is a activation class for the system (imagine, that you have several classes and several jobs, maybe some classes will be overworked, so you can specify another class to execute the job)

MSGCLASS - traditionally, it is equal to X (printer)

MSGLEVEL - it is some kind of logging level for the job. Options: (2,0), (2,1), (1,1), (0,1), (0,0), (1,0)

NOTIFY - it is param to identify who is needed to be notified about job completion