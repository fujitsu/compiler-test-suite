module mod01
 contains
  function m1func01() result(m1rst01)
   integer :: m1rst01
   entry m1ent01() result(m1rst01)
   m1rst01 = 1
  end function
  subroutine m1sub01()
   call csub01(m1ent01)
   contains
   subroutine csub01(eproc)
    external :: eproc
   end subroutine
  end subroutine
end module

use mod01

call csub01(m1ent01)

print *,'pass'

contains
 subroutine csub01(eproc)
  external :: eproc
 end subroutine

end


