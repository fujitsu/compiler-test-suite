module mod
  integer,save :: iii=0
end module
subroutine exsub() bind(C)
  use mod 
  iii = iii + 1
end subroutine
subroutine exsub01(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),intent(in),bind(C),pointer :: arg1
  iii = iii + 1
  call arg1()
end subroutine
subroutine exsub02(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  intent(in) :: arg1
  procedure(sub),bind(C),pointer :: arg1
  iii = iii + 2
  call arg1()
end subroutine
subroutine exsub03(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),pointer :: arg1
  intent(in) :: arg1
  iii = iii + 3
  call arg1()
end subroutine
subroutine exsub04(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  intent(in) :: arg1
  pointer :: arg1
  procedure(sub),bind(C) :: arg1
  iii = iii + 4
  call arg1()
end subroutine
subroutine exsub05(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: arg1
  intent(in) :: arg1
  pointer :: arg1
  iii = iii + 5
  call arg1()
end subroutine
subroutine exsub06(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  pointer :: arg1
  procedure(sub),bind(C),intent(in) :: arg1
  iii = iii + 6
  call arg1()
end subroutine
subroutine exsub07(arg1)
  use mod 
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),intent(in) :: arg1
  pointer :: arg1
  iii = iii + 7
  call arg1()
end subroutine

use mod
interface
  subroutine inexsub01(arg1)
    interface
      subroutine sub() bind(C)
      end subroutine
    end interface
    procedure(sub),intent(in),bind(C),pointer :: arg1
  end subroutine
  subroutine insub() bind(C)
  end subroutine
end interface
procedure(insub),bind(C),pointer :: ppp
procedure(insub),bind(C) :: exsub
procedure(inexsub01),pointer :: ppp1
procedure(inexsub01),pointer :: ppp2
procedure(inexsub01),pointer :: ppp3
procedure(inexsub01),pointer :: ppp4
procedure(inexsub01),pointer :: ppp5
procedure(inexsub01),pointer :: ppp6
procedure(inexsub01),pointer :: ppp7
procedure(inexsub01) :: exsub01
procedure(inexsub01) :: exsub02
procedure(inexsub01) :: exsub03
procedure(inexsub01) :: exsub04
procedure(inexsub01) :: exsub05
procedure(inexsub01) :: exsub06
procedure(inexsub01) :: exsub07
ppp1=>exsub01
ppp2=>exsub02
ppp3=>exsub03
ppp4=>exsub04
ppp5=>exsub05
ppp6=>exsub06
ppp7=>exsub07
ppp=>exsub
call ppp1(ppp)
call ppp2(ppp)
call ppp3(ppp)
call ppp4(ppp)
call ppp5(ppp)
call ppp6(ppp)
call ppp7(ppp)
if (iii .ne. 35) print *,'ng'
print *,'ok'
end
