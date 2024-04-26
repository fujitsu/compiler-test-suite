program proc_ptr_example
  type(real*8) :: r1
  type(integer) :: i1
  
  interface
    
    subroutine sub(x)
      type(real), intent(in) :: x
    end subroutine sub
   
     function real_func(y)
      type(real), intent(in) :: y
      type(real*8) ::  real_func
    end function real_func

    function int_func(a)
      type(integer), intent(in) :: a
      type(integer) ::  int_func
    end function int_func

  end interface
  

  procedure(sub), pointer :: ptr_to_sub 
  

  procedure(type(real*8)), pointer :: ptr_to_real_func => null()  
  

  procedure(type(integer)), pointer :: ptr_to_int => null()                   
  ptr_to_sub => sub
  ptr_to_int=>int_func
  ptr_to_real_func => real_func
  call ptr_to_sub(1.0)
  r1 = ptr_to_real_func(2.0)
  i1 = ptr_to_int(100)
  if(r1 /= 2.0) print *,101, r1
  if(i1 /= 100) print *,102
  print *,"Pass"
end program proc_ptr_example

subroutine sub(x)
  type(real), intent(in) :: x
  if(x /=1.0) print *,1010
  if(kind(x) /=4) print*,1011
end subroutine

function real_func(y)
  type(real), intent(in) :: y
  type(real*8) ::  real_func
  if(y /=2.0) print*,102
  real_func=y
end function real_func

function int_func(a)
  type(integer), intent(in) :: a
  type(integer) ::  int_func
  if(a /=100) print*,103
  int_func=a
end function
