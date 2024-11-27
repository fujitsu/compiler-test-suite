  subroutine xxx(a, b, c)
    integer a, b, c
a=a;b=b;c=c
  end

  interface
    function xxx(a, b, c)
      integer a, b, c
    end
  end interface
  end
