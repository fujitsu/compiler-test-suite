integer function proc() bind(C)
  proc = 100
end function
subroutine sub(arg1) bind(C)
  interface
    integer function arg1() bind(C)
    end function
  end interface
  if ( 100 .ne. arg1())print *,'ng'
  print *,'ok'
end subroutine

interface
subroutine sub(arg1) bind(C)
  interface
    integer function arg1() bind(C)
    end function
  end interface
end subroutine
integer function proc() bind(C)
end function
end interface
call sub(proc)
end
