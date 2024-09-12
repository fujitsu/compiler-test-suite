  implicit none
  interface operator(.plus.)
    function add01(int01, int02) result(int03)
      implicit none
      integer, intent(in),pointer :: int01,int02
      integer :: int03
    end function add01
    function add02(int01, int02) result(int03)
      implicit none
      real, intent(in),pointer :: int01,int02
      real :: int03
    end function add02
  end interface

  integer :: w_int
  integer,pointer :: w_int01,w_int02
  real    :: w_rel
  real,pointer    :: w_rel01,w_rel02

  allocate(w_int01,w_int02)
  w_int01 = 1
  w_int02 = 2
  w_int = w_int01.plus.w_int02
  if (w_int == 5) then
    print *,"01 pass"
  else 
    print *,"01 NG ",w_int
  end if

  allocate(w_rel01,w_rel02)
  w_rel01 = 1.0
  w_rel02 = 2.0
  w_rel = w_rel01.plus.w_rel02
  if (w_rel == 6) then
    print *,"02 pass"
  else 
    print *,"02 NG ",w_rel
  end if
end

function add01(int01, int02) result(int03)
  implicit none
  integer, intent(in),pointer :: int01,int02
  integer :: int03
  int03 = int01 + int02 + 2
end function add01

function add02(int01, int02) result(int03)
  implicit none
  real, intent(in),pointer :: int01,int02
  real :: int03
  int03 = int01 + int02 + 3
end function add02
