module mod01
 contains
  function m1func01() result(m1rst01)
   integer :: m1rst01
   entry m1ent01() result(m1rst01)
   m1rst01 = 1
   contains
    subroutine m1csub01(mifunc01)
     interface
      function mifunc01() result(mirst01)
       integer :: mirst01
      end function
     end interface
    end subroutine
  end function
  subroutine m1sub01()
   procedure(m1ent01) :: pproc01
   call m1csub02(m1ent01)
   call m1csub02(pproc01)
   contains
    subroutine m1csub02(mifunc01)
     interface
      function mifunc01() result(mirst01)
       integer :: mirst01
      end function
     end interface
    end subroutine
  end subroutine
end module

use mod01

procedure(m1ent01) :: pproc01

if (m1ent01().ne.pproc01()) print *,'error'

print *,'pass'

contains
 subroutine csub02(mifunc01)
  interface
   function ifunc01() result(irst01)
    integer :: irst01
   end function
  end interface
 end subroutine

end

function pproc01() result(prst01)
 integer :: prst01
 prst01 = 1
end function
