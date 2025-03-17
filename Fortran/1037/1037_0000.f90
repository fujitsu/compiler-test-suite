module m
contains
  subroutine sub(a,b,c)
     real, dimension(:), target:: a
     real, dimension(:),target :: b,c
     a = b + c
  end subroutine sub
end module m

program main
  use m
  real, pointer :: a(:) 
  allocate (a(4))
  a = (/1,2,3,4/)
  call sub (a(2:3),a(1:2),a(3:4))
if (any(a/=(/1,4,6,4/)))print *,'error'
print *,'pass'
end program main
