
/*------------------------------------------------------------------------
    File        : button.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Fri Oct 06 16:50:25 EEST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */

/*------------------------------------------------------------------------
    File        : test.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Fri Oct 06 16:37:03 EEST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */


DEFINE VARIABLE but1 AS HANDLE NO-UNDO.
DEFINE INPUT PARAMETER city AS CHARACTER.

DISPLAY SKIP(3) WITH FRAME x SIDE-LABELS.
DISPLAY city.

OPEN QUERY all-custs FOR EACH Customer WHERE Customer.city = city.
GET FIRST all-custs.
DISPLAY Customer.Name WITH FRAME x.

CREATE BUTTON but1 ASSIGN
  ROW       = 3
  COLUMN    = 5
  LABEL     = "Next Customer"
  FRAME     = FRAME x:HANDLE
  SENSITIVE = TRUE
  VISIBLE   = TRUE
  TRIGGERS:
    ON CHOOSE DO:
      GET NEXT all-custs.
      IF AVAILABLE Customer THEN DO:
        DISPLAY Customer.Name WITH FRAME x.
      END.
      ELSE DO:
      MESSAGE "No more Customers"
      VIEW-AS ALERT-BOX.
        LEAVE.
      END. 
    END.
  END TRIGGERS.

WAIT-FOR WINDOW-CLOSE OF CURRENT-WINDOW.