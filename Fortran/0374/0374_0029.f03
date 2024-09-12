module m
  procedure(proc), pointer :: p => null()
  interface 
  subroutine proc(x)
    integer x
  end subroutine
  end interface
contains
  subroutine sub(x)
    integer x
    x = x + 1
    if (x.eq.1) print *,'pass'
  end subroutine
end module

program main
   use m
   p => sub
   i = 0
   call p(i)
end
