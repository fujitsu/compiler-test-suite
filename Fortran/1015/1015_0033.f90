subroutine sub(a, b, c, d)
  integer a, b
  integer,optional:: c, d
end

interface 
  subroutine sub(a, b, c, d)
    integer:: a, c
    integer,optional:: b, d
  end subroutine
end interface

call sub(a=1, c=2)
end
