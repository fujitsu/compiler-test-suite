type z
  integer(4),dimension(2)::zi
end type
type y
  type(z),allocatable,dimension(:)::ya
end type
type (y),dimension(1)::a,b

  allocate(b(1)%ya(1))
  allocate(a(1)%ya(1))
  a(1)%ya(1)%zi=(/100,101/)
  b=a
  a(1)%ya(1)%zi=(/200,201/)
  if (any(b(1)%ya(1)%zi/=(/100,101/))) write(6,*) "NG"
  b(:)=a(:)
  if (any(b(1)%ya(1)%zi/=(/200,201/))) write(6,*) "NG"

 print *,'pass'
end
