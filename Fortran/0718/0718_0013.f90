subroutine sub1(arg1) bind(C)
  interface
    subroutine proc() bind(C)
    end subroutine
  end interface
  procedure() :: arg1
end subroutine
subroutine sub2(arg1) bind(C)
  interface
    subroutine proc()
    end subroutine
  end interface
  procedure(proc) :: arg1
end subroutine
subroutine sub3(arg1) bind(C)
  interface
    subroutine proc() bind(C)
    end subroutine
  end interface
  procedure(proc) :: arg1
end subroutine
subroutine sub4(arg1) bind(C)
  interface
    subroutine proc() bind(C)
    end subroutine
  end interface
  procedure(proc),bind(C) :: arg1
end subroutine
end
