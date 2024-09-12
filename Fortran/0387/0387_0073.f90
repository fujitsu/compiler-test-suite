module mod01
 contains
  subroutine msub01(i) bind(c, name = 'ms01')
   integer :: i
   entry ms01_ent01(i) bind(c)
   entry ms01_ent02(i) bind(c, name = 'ms01e02')
  end subroutine
  subroutine msub02(i) bind(c)
   integer :: i
   entry ms02_ent01(i) bind(c)
   entry ms02_ent02(i) bind(c, name = 'ms02e02')
  end subroutine
end module

use mod01

procedure(msub01)     :: pmsub01
procedure(ms01_ent01) :: pmsub02
procedure(ms01_ent02) :: pmsub03
procedure(msub02)     :: pmsub04
procedure(ms02_ent01) :: pmsub05
procedure(ms02_ent02) :: pmsub06

procedure(msub01)    , pointer :: pmsub01p
procedure(ms01_ent01), pointer :: pmsub02p
procedure(ms01_ent02), pointer :: pmsub03p
procedure(msub02)    , pointer :: pmsub04p
procedure(ms02_ent01), pointer :: pmsub05p
procedure(ms02_ent02), pointer :: pmsub06p

call csub01(msub01)
call csub01(ms01_ent01)
call csub01(ms01_ent02)
call csub01(msub02)
call csub01(ms02_ent01)
call csub01(ms02_ent02)

call csub01(pmsub01)
call csub01(pmsub02)
call csub01(pmsub03)
call csub01(pmsub04)
call csub01(pmsub05)
call csub01(pmsub06)

call csub01(pmsub01p)
call csub01(pmsub02p)
call csub01(pmsub03p)
call csub01(pmsub04p)
call csub01(pmsub05p)
call csub01(pmsub06p)

call csub02(msub01)

call csub03(pmsub01p)

print *,'pass'

contains
 subroutine csub01(dsub01)
  interface
   subroutine dsub01(i) bind(c)
    integer :: i
   end subroutine
  end interface
 end subroutine
 subroutine csub02(psub02)
  interface
   subroutine dsub02(i) bind(c , name = 'ds02')
    integer :: i
   end subroutine
  end interface
  procedure(dsub02) :: psub02
 end subroutine
 subroutine csub03(psub02p)
  interface
   subroutine dsub02(i) bind(c , name = 'ds02')
    integer :: i
   end subroutine
  end interface
  procedure(dsub02),pointer :: psub02p
 end subroutine
end

subroutine dsub01(i) bind(c)
 integer :: i
end subroutine

subroutine dsub02(i) bind(c, name = 'ds02')
 integer :: i
end subroutine

subroutine psub02(i) bind(c)
 integer :: i
end subroutine

subroutine pmsub01(i) bind(c)
 integer :: i
end subroutine

subroutine pmsub02(i) bind(c)
 integer :: i
end subroutine

subroutine pmsub03(i) bind(c)
 integer :: i
end subroutine

subroutine pmsub04(i) bind(c)
 integer :: i
end subroutine

subroutine pmsub05(i) bind(c)
 integer :: i
end subroutine

subroutine pmsub06(i) bind(c)
 integer :: i
end subroutine
