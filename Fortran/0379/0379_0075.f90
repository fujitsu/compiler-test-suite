subroutine proc() bind(C)
  print *,'ok'
end subroutine
subroutine sub(arg1) bind(C)
  interface
    subroutine arg1() bind(C)
    end subroutine
  end interface
  call arg1()
end subroutine

interface
subroutine sub(arg1) bind(C)
  interface
    subroutine arg1() bind(C)
    end subroutine
  end interface
end subroutine
subroutine proc() bind(C)
end subroutine
end interface
call sub(proc)
end
