
/*------------------------------------------------------------------------
    File        : Main.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Fri Oct 06 13:15:19 EEST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */


DEFINE VAR firstTask AS MessageTask NO-UNDO.
DEFINE VAR secondTask AS FilterTask NO-UNDO.

DEFINE VAR city AS CHAR.
RUN read.w(OUTPUT city).


ASSIGN 
    firstTask  = NEW MessageTask(INPUT 1,INPUT "Just Display", INPUT "Hello!")
    secondTask = NEW FilterTask(INPUT 2,INPUT "Filter Customers",INPUT city).


//firstTask:executeTask().

secondTask:executeTask().


