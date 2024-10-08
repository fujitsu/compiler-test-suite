MODULE LIST
  TYPE NODE
     INTEGER :: PAYLOAD
     TYPE (NODE), POINTER :: NEXT
  END TYPE NODE
CONTAINS
  SUBROUTINE INCREMENT_LIST_ITEMS (HEAD)
    TYPE (NODE), POINTER :: HEAD
    TYPE (NODE), POINTER :: P
    P => HEAD
    DO
       P => P%NEXT
       IF ( .NOT. ASSOCIATED (P) ) EXIT
    END DO
  END SUBROUTINE INCREMENT_LIST_ITEMS
END MODULE LIST

recursive subroutine sub
USE LIST
TYPE(NODE), TARGET :: a
TYPE(NODE), POINTER :: p
a%NEXT=>null()
p => a
CALL INCREMENT_LIST_ITEMS(p)
end
call sub
PRINT *,"pass"
end
