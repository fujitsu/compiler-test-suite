type z
  complex(4),allocatable,dimension(:)::p
end type
type (z) a,b
 allocate(b%p(1))
 b%p=(1.0E0,2.0E0)
 a=b
 b%p=(3.0E0,4.0E0)
 if (size(a%p)/=1) write(6,*) "NG"
 if (abs(real(a%p(1))-1.0E0).gt.1.0E-8) write(6,*) "NG"
 if (abs(imag(a%p(1))-2.0E0).gt.1.0E-8) write(6,*) "NG"
 print *,'pass'
end