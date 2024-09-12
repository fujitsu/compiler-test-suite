module modul
TYPE first
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(first) :: second
 Integer :: i2
END TYPE
end module
 
use modul

interface
  subroutine sub(Adum)
    use modul
    CLASS(first) :: Adum(:)
  end subroutine
end interface

TYPE(second) :: act(7)
call sub(act)
END PROGRAM

subroutine sub(Adum)
use modul
CLASS(first) :: Adum(:)
 
Adum%i1=1
Adum(2:5)%i1=3

SELECT TYPE(A=>Adum(2:5))
 CLASS DEFAULT
  if(all(A%i1 /=3)) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
end subroutine
