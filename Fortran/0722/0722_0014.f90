  interface 
  subroutine proc(x)
    integer x
  end subroutine
  end interface
  procedure(proc), pointer :: p => null()
  p => sub
  i = 0
  call p(i)
  contains
    subroutine sub(x)
     integer x
     x = x + 1
     print *,x
    end subroutine
  end
