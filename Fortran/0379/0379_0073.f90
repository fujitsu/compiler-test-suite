module mod
  integer,save :: iii =  0
end module
subroutine proc() bind(C)
  use mod
  iii = 1 + iii
end subroutine

subroutine exsub01(arg1)
  interface
    subroutine proc() bind(C)
    end subroutine
  end interface
  procedure(proc),bind(C) :: arg1
  call arg1()
end subroutine
subroutine exsub02(arg1)
  interface
    subroutine proc() bind(C)
    end subroutine
  end interface
  procedure(proc),pointer,bind(C) :: arg1
  call arg1()
end subroutine

subroutine exsub() bind(C)
  use mod
  iii = 1 + iii
end subroutine

use mod
interface
  subroutine exsub01(arg1)
    interface
      subroutine proc() bind(C)
      end subroutine
    end interface
    procedure(proc),bind(C) :: arg1
  end subroutine
  subroutine exsub02(arg1)
    interface
      subroutine proc() bind(C)
      end subroutine
    end interface
    procedure(proc),pointer,bind(C) :: arg1
  end subroutine
  subroutine proc1(arg) bind(C)
  end subroutine
  subroutine proc2() bind(C)
    interface
      subroutine proc() bind(C)
      end subroutine
    end interface
  end subroutine
  subroutine exsub() bind(C)
  end subroutine
  subroutine proc() bind(C)
  end subroutine
end interface
procedure(proc),pointer :: ppp
ppp=>proc
call exsub01(exsub)
call exsub02(ppp)
if (iii .ne. 2) print *,'ng'
print *,'ok'
end
