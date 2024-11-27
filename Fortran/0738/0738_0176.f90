type z
  integer(4),allocatable,dimension(:)::aa
end type
type (z)   a
integer(4),dimension(2)::b

  allocate(a%aa(2))
  a%aa=16
  b=2

  a=z(b-1)

  if (any(a%aa/=(/1,1/))) write(6,*) "NG"

 print *,'pass'
end
