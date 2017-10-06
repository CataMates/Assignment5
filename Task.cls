 
 /*------------------------------------------------------------------------
    File        : Task
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Fri Oct 06 12:43:50 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Task ABSTRACT: 
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    
    DEFINE PRIVATE VAR taskId          AS INTEGER.
    DEFINE PRIVATE VAR taskDescription AS CHARACTER.
        
    CONSTRUCTOR PUBLIC Task (INPUT otherId AS INTEGER, INPUT otherDescr AS CHARACTER):
        ASSIGN
            taskId          = otherId.
            taskDescription = otherDescr.
        
    END CONSTRUCTOR.

    DESTRUCTOR PUBLIC Task ( ):

    END DESTRUCTOR.
    
    METHOD PUBLIC ABSTRACT VOID executeTask().

END CLASS.