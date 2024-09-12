  implicit none
  interface operator(.plus.)
    function add01(int01, int02) result(int03)
      implicit none
      integer, intent(in) :: int01,int02
      integer :: int03
    end function add01
    function add02(int01, int02) result(int03)
      implicit none
      real, intent(in) :: int01,int02
      real :: int03
    end function add02
  end interface

  integer :: w_int
  real    :: w_rel
  w_int = 1.plus.2
  if (w_int == 5) then
    print *,"01 pass"
  else 
    print *,"01 NG ",w_int
  end if
  w_rel = 1.0.plus.2.0
  if (w_rel == 6) then
    print *,"02 pass"
  else 
    print *,"02 NG ",w_rel
  end if
end

function add01(int01, int02) result(int03)
  implicit none
  integer, intent(in) :: int01,int02
  integer :: int03
  int03 = int01 + int02 + 2
end function add01

function add02(int01, int02) result(int03)
  implicit none
  real, intent(in) :: int01,int02
  real :: int03
  int03 = int01 + int02 + 3
end function add02
