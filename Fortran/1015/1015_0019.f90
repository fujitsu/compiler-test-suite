interface 
  subroutine sub(a, b, c)
    integer a
    integer(2):: b
    real c
  end subroutine
end interface

call sub(1, 2, 3.0)
end

subroutine sub(a, b, c)
  integer a, b, c
end subroutine
