module mod1
 integer,allocatable,dimension(:)::aaa
end module
module mod2
 integer,allocatable::bbb
end module
module mod1_1
 use mod1
 contains
  subroutine m1_1sub1()
   aaa=1
  end subroutine
end module
module mod2_1
 use mod2
 contains
  subroutine m2_1sub1()
   bbb=1
  end subroutine
end module

print *,'pass'
end
subroutine xxx()
use mod1_1
use mod2_1
call m1_1sub1()
end
