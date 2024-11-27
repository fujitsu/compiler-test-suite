  interface
    subroutine xxx(i)
      integer,volatile:: i
    end subroutine
  end interface
  end

  subroutine xxx(a)
    integer:: a
  end
