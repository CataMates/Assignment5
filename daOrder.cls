 
 /*------------------------------------------------------------------------
    File        : daOrder
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Mon Oct 09 08:26:14 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS daOrder INHERITS DataAccess: 
    
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
        
    CONSTRUCTOR PUBLIC daOrder (  ):
        SUPER ().
        
    END CONSTRUCTOR.

    METHOD OVERRIDE PUBLIC VOID fetchData(  ):
        
        UNDO, THROW NEW Progress.Lang.AppError("METHOD NOT IMPLEMENTED").

    END METHOD.
    
     METHOD OVERRIDE PUBLIC VOID storeData(  ):
        
        UNDO, THROW NEW Progress.Lang.AppError("METHOD NOT IMPLEMENTED").

    END METHOD.

    DESTRUCTOR PUBLIC daOrder ( ):

    END DESTRUCTOR.

END CLASS.