call cont_sub1([ character(cont_func1(1)) ::  ])

call cont_sub1([ character(cont_func1(1)) :: ('',i=1,1) ])

call cont_sub1([ character(cont_func1(1)) :: (cont_func2(1),i=1,1) ])

call cont_sub1([ character(cont_func1(1)) :: cont_func2(3) ])

call cont_sub1([ character(cont_func1(1)) :: (cont_func2(cont_func1(2)),i=1,1) ])

call cont_sub1([ character(cont_func1(1)) :: cont_func2(cont_func1(2)) ])

print *,'pass'

contains
 function cont_func1(i) result(rst)
  integer :: rst
  rst = i**i
 end function
 function cont_func2(i) result(rst)
  character(i),allocatable :: rst(:)
  allocate(rst(i))
  rst = [character(i) :: ('abcdefg',j=1,i)]
 end function
 subroutine cont_sub1(s1)
  character(*) :: s1(*)
 end subroutine
end

