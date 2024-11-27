interface 
  subroutine sub(a, b, c)
    integer a, b, c
  end subroutine
end interface

call sub(1, 2, 3)
end

subroutine sub(a, b, c, d)
  integer a, b, c, d

  d = a+b+c
end subroutine
