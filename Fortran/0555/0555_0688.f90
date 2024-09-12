PROGRAM main
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
 
TYPE,EXTENDS(second) :: third
 Integer :: i3
END TYPE
 
CLASS(*),pointer :: ptr
call sub(ptr)
contains
  SUBROUTINE sub(A)
    CLASS(*),POINTER :: A
    TYPE(second),POINTER :: ptr1
    TYPE(second),TARGET :: tgt

    tgt%i1=1
    A => tgt
    SELECT TYPE(A)
      TYPE IS(first)
        PRINT*,101
      CLASS IS(second)
        ptr1=>A
        if(ptr1%i1 .EQ. 1) then
          print*,'pass'
        else
          print*,102
        endif
      CLASS IS(third)
        print*,103
    END SELECT
END SUBROUTINE
END PROGRAM
