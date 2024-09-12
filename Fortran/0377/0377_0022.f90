module mod1
 interface
  function mod1_func1(i) result(rst)
   integer :: rst
  end function
  function mod1_func2(i) result(rst)
   character(i),allocatable :: rst(:)
  end function
  subroutine cont_sub1(s1)
   character(*) :: s1(*)
  end subroutine
 end interface
end module

use mod1

call cont_sub1([ character(mod1_func1(1)) ::  ])

call cont_sub1([ character(mod1_func1(1)) :: ('',i=1,1) ])

call cont_sub1([ character(mod1_func1(1)) :: (mod1_func2(1),i=1,1) ])

call cont_sub1([ character(mod1_func1(1)) :: mod1_func2(3) ])

call cont_sub1([ character(mod1_func1(1)) :: (mod1_func2(mod1_func1(2)),i=1,1) ])

call cont_sub1([ character(mod1_func1(1)) :: mod1_func2(mod1_func1(2)) ])

print *,'pass'

end

function mod1_func1(i) result(rst)
 integer :: rst
 rst = i**i
end function

function mod1_func2(i) result(rst)
 character(i),allocatable :: rst(:)
 allocate(rst(i))
 rst = [character(i) :: ('abcdefg',j=1,i)]
end function

subroutine cont_sub1(s1)
 character(*) :: s1(*)
end subroutine
