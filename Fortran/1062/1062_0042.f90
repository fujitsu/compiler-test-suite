module m3
  implicit none
  interface
   module subroutine sub1(a)
   !!!!implicit noe
   external::a
   end subroutine
   module subroutine sub2(a)
   implicit none
   external::a
   end subroutine
   module subroutine sub3(a)
   !!!!implicit noe
   external::a
   end subroutine
   module subroutine sub4(a)
   implicit none
   external::a
   end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub1
    implicit none
  !!!  if (a()/=1) print *,901
  end 
  module procedure  sub2
    implicit none
  !!!  if (a()/=1) print *,902
  end 
  module procedure  sub3
    implicit none
    call a
  !!!  if (a()/=1) print *,901
  end 
  module procedure  sub4
    implicit none
    call a
  !!!  if (a()/=1) print *,902
  end 
end

use m3
    implicit none
external::s
call sub1(s)
call sub2(s)
call sub3(s)
call sub4(s)
print *,'sngg177h : pass'
end
subroutine s
end

