subroutine sub(a, b, c, d)
  integer a, b, c, d
  pointer b, d
end

interface
  subroutine sub(a, b, c, d)
    integer a, b, c, d
    pointer c, d
  end subroutine
end interface

pointer k, l
call sub(i, j, k, l)
end
