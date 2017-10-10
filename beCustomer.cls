 
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
        
    CONSTRUCTOR PUBLIC beCustomer (  ):
        dataAccessCustomer = NEW daCustomer().
        
    END CONSTRUCTOR.
    
    
    METHOD PUBLIC VOID getCustomerByCity(INPUT city AS CHAR):
        
          DEFINE VAR hdsCustomer AS HANDLE NO-UNDO.
          DEFINE VAR filterString AS CHAR FORMAT 'X(50)' NO-UNDO.
          ASSIGN filterString = ".city = " + quoter(city).
          
/*          dataAccessCustomer:fetchData(INPUT-OUTPUT customerHandle AS HANDLE ).*/
          dataAccessCustomer:fetchData(INPUT-OUTPUT hdsCustomer, filterString).
/*        DEFINE VAR hdsCustomer             AS HANDLE NO-UNDO.                                            */
/*        DEFINE VAR customerBufferHandle     AS HANDLE NO-UNDO.                                           */
/*        DEFINE VARIABLE queryHandleCustomer AS HANDLE NO-UNDO.                                           */
/*                                                                                                         */
/*        CREATE DATASET hdsCustomer.                                                                      */
/*                                                                                                         */
/*        hdsCustomer = dataAccessCustomer:getHandle().                                                    */
/*        customerBufferHandle = hdsCustomer:GET-BUFFER-HANDLE("ttCustomer").                              */
/*                                                                                                         */
/*                                                                                                         */
/*        CREATE QUERY queryHandleCustomer.                                                                */
/*        queryHandleCustomer:SET-BUFFERS(customerBufferHandle).                                           */
/*        queryHandleCustomer:QUERY-PREPARE("FOR EACH ttCustomer WHERE ttCustomer.city = " + quoter(city)).*/
/*        queryHandleCustomer:FORWARD-ONLY = TRUE.                                                         */
/*        queryHandleCustomer:QUERY-OPEN() NO-ERROR.                                                       */
        
/*        REPEAT:                                      */
/*            queryHandleCustomer:GET-NEXT().          */
/*            IF queryHandleCustomer:QUERY-OFF-END THEN*/
/*              LEAVE.                                 */
/*            MESSAGE customerBufferHandle::NAME       */
/*            VIEW-AS ALERT-BOX.                       */
/*        END.                                         */
    END METHOD.
    
    
    

    DESTRUCTOR PUBLIC beCustomer ( ):

    END DESTRUCTOR.

END CLASS.