module m3
  implicit none
  interface
   module subroutine sub1(a)
   implicit none
   real,external::a
   end subroutine
   module subroutine sub2(a)
   implicit none
   real   ,external::a
   end subroutine
   module subroutine sub3(a)
   real,external::a
   end subroutine
   module subroutine sub4(a)
   real,external::a
   end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub1
    implicit none
write(1,*) a()
  end 
  module procedure  sub2
   !!!implicit none
write(1,*) a()
  end 
  module procedure  sub3
   implicit none
write(1,*) a()
  end 
  module procedure  sub4
  !!  implicit none
write(1,*) a()
  end 
end

use m3
    !implicit none
real,external::s
call sub1(s)
call sub2(s)
call sub3(s)
call sub4(s)
print *,'sngg425h : pass'
end
function s()
s=1
end

