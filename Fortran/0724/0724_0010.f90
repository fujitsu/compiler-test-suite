procedure(integer) :: out_func1

call csub1(out_func1)

contains
 subroutine csub1(out_func2)
  interface
   function func1()
    integer, pointer :: func1
   end function
  end interface
  procedure(func1) :: out_func2
 end subroutine


end

function func1()
 integer, pointer :: func1
 func1 => null()
end function

function out_func1()
 integer :: out_func1
 out_func1 = 1
end function

function out_func2()
 integer, pointer :: out_func2
 out_func2 => null()
end function

