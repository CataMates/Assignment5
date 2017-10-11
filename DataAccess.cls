 
 /*------------------------------------------------------------------------
    File        : DataAccess
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : demo
    Created     : Mon Oct 09 08:21:28 EEST 2017
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS DataAccess ABSTRACT: 
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
        
    CONSTRUCTOR PUBLIC DataAccess (  ):
        SUPER ().
        
    END CONSTRUCTOR.

    DESTRUCTOR PUBLIC DataAccess ( ):

    END DESTRUCTOR.
    
    METHOD PUBLIC VOID fetchData(INPUT-OUTPUT hdsCustomer AS HANDLE):
        
        
        DEFINE VAR genericBufferHandle     AS HANDLE NO-UNDO.
        DEFINE VAR queryHandleGeneric      AS HANDLE NO-UNDO.
        
        hdsCustomer:FILL().
        
/*          genericBufferHandle = hdsCustomer:GET-BUFFER-HANDLE("ttCustomer").*/
/*                                                                                                   */
/*        CREATE QUERY queryHandleGeneric.                                                           */
/*        queryHandleGeneric:SET-BUFFERS(genericBufferHandle).                                       */
/*        queryHandleGeneric:QUERY-PREPARE("FOR EACH " + tableName + " WHERE " + tableName + filter).*/
/*        queryHandleGeneric:FORWARD-ONLY = TRUE.                                                    */
/*        queryHandleGeneric:QUERY-OPEN() NO-ERROR.                                                  */
/*                                                                                                   */
/*        REPEAT:                                                                                    */
/*            queryHandleGeneric:GET-NEXT().                                                         */
/*            IF queryHandleGeneric:QUERY-OFF-END THEN                                               */
/*              LEAVE.                                                                               */
/*            MESSAGE genericBufferHandle::NAME                                                      */
/*            VIEW-AS ALERT-BOX.                                                                     */
/*        END.                                                                                       */
    END METHOD.
    
    METHOD PUBLIC ABSTRACT VOID storeData().

END CLASS.