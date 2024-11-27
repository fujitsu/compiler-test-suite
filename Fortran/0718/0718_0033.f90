module mod
  contains
  subroutine sub(arg1) bind(C)
    procedure(proc01) :: arg1
    interface
      subroutine proc01()
      end subroutine
    end interface
  end subroutine

  subroutine sub01(arg1,arg2,arg3) bind(C)
    procedure(sub02) :: arg1
    procedure(func01) :: arg2
    procedure(func02) :: arg3
  end subroutine

  subroutine sub02()
  end subroutine

  function func01()
  end function

  function func02() result(ret)
  end function

end module
end
