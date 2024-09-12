module mod01
 interface

  function mifunc01(miarg01) result(mirst01)
   interface
    subroutine isub01(iarg01)
     integer :: iarg01
    end subroutine
   end interface
   procedure(isub01)          :: miarg01
   procedure(isub01), pointer :: mirst01
  end function

  subroutine misub01(miarg01)
   external :: miarg01
  end subroutine

 end interface
 procedure(mifunc01) :: pfunc01
 contains
  subroutine m1sub01(m1arg01)

   interface
    subroutine isub01(iarg01)
     integer :: iarg01
    end subroutine
   end interface

   procedure(misub01) :: m1arg01
   call m1arg01(pfunc01(isub01))
  end subroutine
end module

use mod01

procedure(misub01) :: psub01

call m1sub01(psub01)

print *,'pass'

end

function pfunc01(miarg01) result(mirst01)
 interface
  subroutine isub01(iarg01)
   integer :: iarg01
  end subroutine
 end interface
 procedure(isub01)          :: miarg01
 procedure(isub01), pointer :: mirst01
 mirst01 => miarg01
end function

subroutine psub01(miarg01)
 external :: miarg01
 call miarg01(1)
end subroutine

subroutine isub01(iarg01)
 integer :: iarg01
 if (iarg01.ne.1) print *,'not pass'
end subroutine
