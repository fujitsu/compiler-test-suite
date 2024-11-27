interface
  subroutine xxx(a, b, c)
    integer b
    real a
    complex c
  end
end interface
  end

  subroutine xxx(a, b, c)
    integer a
    real b
    complex c
a=a;b=b;c=c
  end
