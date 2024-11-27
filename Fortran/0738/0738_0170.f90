call sub(5)
print *,'pass'
end

subroutine sub(j)
type z
  integer(4),allocatable,dimension(:)::aa
end type
type (z)   a
integer(4),dimension(j)::b

  b=(/(i,i=1,j)/)
  a=z(b+1)
  if (any(a%aa/=(/(i,i=1+1,j+1)/))) write(6,*) "NG"
end
