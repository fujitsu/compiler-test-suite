PROGRAM main
 
CLASS(*),pointer :: ptr(:)
call sub(ptr)
contains
  SUBROUTINE sub(A)
    CLASS(*),POINTER :: A(:)
    INTEGER,POINTER :: ptr1(:)
    INTEGER,TARGET :: tgt(4)

    tgt=1
    tgt(3)=10
    A => tgt
    SELECT TYPE(A)
      TYPE IS(REAL)
        PRINT*,101
      TYPE IS(INTEGER)
        ptr1=>A
        if(ptr1(3) == 10 .and. ptr1(1) ==1) then
          print*,'pass'
        else
          print*,102
        endif
      TYPE IS(LOGICAL)
        print*,103
    END SELECT
END SUBROUTINE
END PROGRAM
