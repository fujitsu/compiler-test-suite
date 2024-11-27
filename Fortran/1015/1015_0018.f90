interface 
  subroutine sub(a, b, c)
    integer a, b, c
  end subroutine
end interface

call sub(1, 2, 3)
end

subroutine sub(a, b)
  integer a, b

  b = a
end subroutine
