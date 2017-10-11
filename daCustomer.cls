 
 /*------------------------------------------------------------------------
    File        : daCustomer
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Mon Oct 09 08:25:06 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS daCustomer INHERITS dataAccess: 
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    {ttCustomer.i}
    DEFINE PRIVATE DATASET dsCustomer FOR ttCustomer.
    DEFINE DATA-SOURCE srcCustomer  FOR Customer.
    
    //DEFINE PRIVATE VARIABLE hdsCustomer AS HANDLE NO-UNDO.
    
        
    CONSTRUCTOR PUBLIC daCustomer (  ):
        SUPER ().
        
    END CONSTRUCTOR.

    METHOD PUBLIC VOID fetchData(INPUT-OUTPUT hdsCustomer AS HANDLE,INPUT filterString AS CHAR):
 
  
        BUFFER ttCustomer:ATTACH-DATA-SOURCE(DATA-SOURCE srcCustomer:HANDLE).

        hdsCustomer = DATASET dsCustomer:HANDLE.
        SUPER:fetchData(hdsCustomer).
        BUFFER ttCustomer:DETACH-DATA-SOURCE().
        
        
    END METHOD.
    
/*    METHOD PUBLIC HANDLE getHandle():*/
/*        RETURN hdsCustomer.          */
/*    END METHOD.                      */
    METHOD OVERRIDE PUBLIC VOID storeData(  ):
        
        UNDO, THROW NEW Progress.Lang.AppError("METHOD NOT IMPLEMENTED").

    END METHOD.

    DESTRUCTOR PUBLIC daCustomer ( ):

    END DESTRUCTOR.

END CLASS.