module modul
TYPE base_type
 Integer :: i1
END TYPE
 
TYPE,EXTENDS(base_type) :: extd_type
 Integer :: i2
END TYPE
end module
 
use modul
interface
  subroutine sub(arg)
    use modul
    CLASS(base_type) :: arg(:)
  end subroutine
end interface

TYPE(extd_type) :: act(5)
call sub(act)
END PROGRAM

subroutine sub(arg)
use modul
CLASS(base_type) :: arg(:)
 
arg%i1=1
arg(2:4)%i1=3

SELECT TYPE(A=>arg(2:4))
 CLASS DEFAULT
   if(all(A%i1 == 3)) then
    print*,'PASS'
  else 
    print*,'FAIL'
  endif
END SELECT
end subroutine
