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
  subroutine sub(A)
    use modul
    CLASS(first) :: A(:)
  end subroutine
end interface
TYPE(second) :: act(3)
act%i1=2
act(2)%i1=3
call sub(act)
END PROGRAM

subroutine sub(A)
use modul
CLASS(first) :: A(:)
 
SELECT TYPE(A)
 CLASS DEFAULT
  if(A(2)%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
end subroutine
