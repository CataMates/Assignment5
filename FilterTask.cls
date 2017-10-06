 
 /*------------------------------------------------------------------------
    File        : FilterTask
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Fri Oct 06 13:29:20 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS FilterTask INHERITS Task: 
    DEFINE PRIVATE VAR city AS CHARACTER .
        
    CONSTRUCTOR PUBLIC FilterTask ( INPUT otherId AS INTEGER, INPUT otherDescr AS CHARACTER, INPUT otherCity AS CHARACTER ):
        SUPER (INPUT otherId, INPUT otherDescr).
        ASSIGN city = otherCity.
        
    END CONSTRUCTOR.

    METHOD OVERRIDE PUBLIC VOID executeTask():
        FOR EACH Customer WHERE Customer.city = city:
            DISPLAY Customer.name.
        END.

    END METHOD.

    DESTRUCTOR PUBLIC FilterTask ( ):

    END DESTRUCTOR.

END CLASS.