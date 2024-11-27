interface
  subroutine sub(a, b, c, d, e)
    integer a
    integer,intent(in):: b
    integer,intent(out):: c
    integer,intent(inout):: d
    integer,intent(inout):: e
  end subroutine
end interface

integer i,j,k,l,m

i=0; j=1; l=2; m=3
call sub(i, j, k, l, m)
end

subroutine sub(a, b, c, d, e)
  integer,intent(inout):: a
  integer,intent(out):: b
  integer,intent(in):: c
  integer d
  integer,intent(inout):: e
  b = a
  a = c
  d = e
  e = a+c+d
end
