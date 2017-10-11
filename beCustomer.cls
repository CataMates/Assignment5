 
 /*------------------------------------------------------------------------
    File        : beCustomer
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Mon Oct 09 11:11:01 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS beCustomer: 
    
    DEFINE PRIVATE VARIABLE dataAccessCustomer AS daCustomer.
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    {dsCustomer.i}
        
    CONSTRUCTOR PUBLIC beCustomer (  ):
        dataAccessCustomer = NEW daCustomer().
        
    END CONSTRUCTOR.
    
    
    METHOD PUBLIC VOID getCustomerByCity(INPUT city AS CHAR):
        
          DEFINE VAR hdsCustomer AS HANDLE NO-UNDO.
          DEFINE VAR filterString AS CHAR FORMAT 'X(50)' NO-UNDO.
          ASSIGN filterString = ".city = " + quoter(city).
          hdsCustomer = DATASET dsCustomer:HANDLE.
          

          dataAccessCustomer:fetchData(INPUT-OUTPUT hdsCustomer, filterString).
          FOR EACH ttCustomer WHERE ttCustomer.city = "Cluj-Napoca":
            MESSAGE ttCustomer.city
            VIEW-AS ALERT-BOX.
          END.

    END METHOD.
    
    
    

    DESTRUCTOR PUBLIC beCustomer ( ):

    END DESTRUCTOR.

END CLASS.