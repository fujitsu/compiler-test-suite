type z
  integer(4),allocatable,dimension(:)::aa
end type
type (z)   a
integer(4),allocatable,dimension(:)::b
  allocate(b(2))
  b=(/1,2/)
  a=z(b+10)

  if (any(a%aa/=(/11,12/))) write(6,*) "NG"

 print *,'pass'
end
