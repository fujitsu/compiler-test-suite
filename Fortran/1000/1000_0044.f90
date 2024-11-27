  interface
    subroutine xxx(i)
      integer,intent(in):: i
    end subroutine
  end interface
  end

  subroutine xxx(a)
    integer:: a
a=a
  end
