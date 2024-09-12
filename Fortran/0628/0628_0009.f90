module mod
  contains
  subroutine sub(p)
    real, pointer,intent(inout) :: p 
    p=1
  end subroutine
end module mod

use mod

 real, pointer:: pp
 allocate(pp)
 call sub(pp)
 print *,"pass"
end

