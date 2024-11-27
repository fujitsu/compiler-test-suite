  interface
    subroutine xxx(i)
      integer,pointer:: i
    end subroutine
  end interface
  end

  subroutine xxx(a)
  integer:: a
  a=a
  end



  subroutine xxx1(a)
  integer:: a
  a=a
  end
  subroutine ssss()
  interface
    subroutine xxx1(i)
      integer,pointer:: i
    end subroutine
  end interface
  end
