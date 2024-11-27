module mod1
 integer,allocatable,dimension(:)::aaa
 contains
  subroutine m1sub1()
   aaa=1
  end subroutine
end module
module mod2
 integer,allocatable ::bbb
 contains
  subroutine m2sub1()
   bbb=1
  end subroutine
end module
use mod1
use mod2
call m1sub1()
call m2sub1()
end
