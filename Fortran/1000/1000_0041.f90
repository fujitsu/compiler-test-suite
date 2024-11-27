  interface
    subroutine sub(func)
      integer :: func
    end
  end interface
  end

  subroutine sub(func)
    integer,external :: func
  end
