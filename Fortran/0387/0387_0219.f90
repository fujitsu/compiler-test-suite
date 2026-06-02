module m
procedure (proc), pointer :: p
interface
   subroutine proc(x)
     integer :: x
   end subroutine
   subroutine sub(x)
     integer :: x
   end subroutine
end interface
end module

 program main
  use m
  p => sub
  i = 0
  call p(i)
 end

 subroutine sub(x)
   integer :: x
     x = x + 1
     if (x.ne.1) print *,'fail'
     print *,"pass"
 end subroutine
