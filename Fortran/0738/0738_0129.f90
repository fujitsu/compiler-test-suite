type z
  integer(4)            ,dimension(2)::i
  complex(4),allocatable,dimension(:)::p
end type
type (z)    ,allocatable,dimension(:)::a,b
 allocate(a(1),b(1))
 allocate(b(1)%p(1))
 b(1)%p=(1.0E0,2.0E0)
 b(1)%i=(/1,2/)
 a=b
 b(1)%p=(3.0E0,4.0E0)
 if (size(a(1)%p)/=1) write(6,*) "NG"
 if (any(a(1)%i/=(/1,2/))) write(6,*) "NG"
 if (abs(real(a(1)%p(1))-1.0E0).gt.1.0E-8) write(6,*) "NG"
 if (abs(imag(a(1)%p(1))-2.0E0).gt.1.0E-8) write(6,*) "NG"
 print *,'pass'
end
