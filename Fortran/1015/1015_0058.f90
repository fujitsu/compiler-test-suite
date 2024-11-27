interface
  subroutine sub(a, b, c, d)
    integer a, b, c, d
    value:: b, c
  end subroutine
end interface

  integer i, j, k, l
  call sub(i, %val(j), %val(k), l)
end

subroutine sub(a, b, c, d)
  integer a, b, c, d
  value:: c, d
  a=d; b=c
end
