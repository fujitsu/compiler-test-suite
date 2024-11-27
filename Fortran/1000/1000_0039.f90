  interface
    subroutine xxx(i)
      integer,allocatable:: i(:)
    end subroutine
  end interface
  end

  subroutine xxx(a)
    integer:: a(10)
 a=a
  end
