module m1
  character(len=:), allocatable, target :: x
  character(LEN=7) :: x1

contains
  function fx()
    character(len=:), pointer :: fx
    fx => x
  end function
  
 subroutine test(a, b)
  character(len=*)::a
  character(len=*),intent(inout) :: b 

  if (len(b) /= 7) print *,201
  if (b /= "1234567") print *,202

  b = "7654321"
  a = b
 end subroutine
end module

use m1
  allocate(character(len=7)::x)
  x = "1234567"
  x1 = "ABCDEFG"

  call test(x1, fx())

  if (x  /= "7654321") print *,101
  if (x1 /= "7654321") print *,102
  if (len(x) /= 7) print *,103
  print *,"Pass"
end program


