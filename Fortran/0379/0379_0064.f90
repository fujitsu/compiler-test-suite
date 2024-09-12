subroutine exsub() bind(C)
  print *,'exsub ok'
end subroutine
subroutine sub1(arg1)
  interface
    subroutine abstsub() bind(c)
    end subroutine
  end interface
  pointer :: arg1
  procedure(abstsub),bind(c) :: arg1
  call arg1()
end subroutine

subroutine sub3(arg1)
  interface
    subroutine abstsub() bind(C)
    end subroutine
  end interface
  pointer :: arg1
  procedure(abstsub),bind(C) :: arg1
  call arg1()
end subroutine

subroutine sub4(arg1)
  interface
    subroutine abstsub()
    end subroutine
  end interface
  procedure(abstsub) :: arg1
  pointer :: arg1
  call arg1()
end subroutine

subroutine sub6(arg1)
  interface
    subroutine abstsub() bind(C)
    end subroutine
  end interface
  procedure(abstsub),bind(C) :: arg1
  pointer :: arg1
  call arg1()
end subroutine

interface
subroutine exsub() bind(C)
end subroutine
subroutine sub1(arg1)
  interface
    subroutine abstsub() bind(C)
    end subroutine
  end interface
  procedure(abstsub),bind(C),pointer :: arg1
end subroutine
subroutine abstsub() bind(C)
end subroutine
subroutine sub3(arg1)
  interface
    subroutine abstsub() bind(C)
    end subroutine
  end interface
  pointer :: arg1
  procedure(abstsub),bind(C) :: arg1
end subroutine
subroutine sub4(arg1)
  interface
    subroutine abstsub()
    end subroutine
  end interface
  procedure(abstsub) :: arg1
  pointer :: arg1
end subroutine
subroutine sub6(arg1)
  interface
    subroutine abstsub() bind(C)
    end subroutine
  end interface
  procedure(abstsub),bind(C) :: arg1
  pointer :: arg1
end subroutine
end interface
procedure(abstsub),pointer,bind(C) :: ppp
ppp=>exsub
call sub1(ppp)
call sub3(ppp)
call sub6(ppp)
print *,'snemm0332_116.f90 ok'
end
