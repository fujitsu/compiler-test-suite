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
    CLASS(first) :: A
  end subroutine
end interface
TYPE(second) :: act
call sub(act)
END PROGRAM

subroutine sub(A)
use modul
CLASS(first) :: A
 
A%i1=3
SELECT TYPE(ASC=>A)
 CLASS DEFAULT
  if(ASC%i1 /=3) then 
    print*,212
  else 
    print*,'pass'
  endif
END SELECT
end subroutine
