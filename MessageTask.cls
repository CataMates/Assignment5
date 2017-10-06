 
 /*------------------------------------------------------------------------
    File        : MessageTask
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Fri Oct 06 12:56:30 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS MessageTask INHERITS Task: 
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PRIVATE VAR msg AS CHARACTER.
        
    CONSTRUCTOR PUBLIC MessageTask ( INPUT otherId AS INTEGER, INPUT otherDescr AS CHARACTER, INPUT otherMsg AS CHARACTER ):
        SUPER (INPUT otherId, INPUT otherDescr).
        ASSIGN msg = otherMsg.
        
    END CONSTRUCTOR.

    METHOD OVERRIDE PUBLIC VOID executeTask():
        
        //UNDO, THROW NEW Progress.Lang.AppError("METHOD NOT IMPLEMENTED").
        DISPLAY msg.        

    END METHOD.

    DESTRUCTOR PUBLIC MessageTask ( ):

    END DESTRUCTOR.

END CLASS.