type z
  complex(16),allocatable,dimension(:)::p
end type
type (z) a,b
 allocate(b%p(2))
 b%p=(1.0D0,2.0D0)
 a=b
 b%p=(3.0D0,4.0D0)
 if (size(a%p)/=2) write(6,*) "NG"
 if (abs(real(a%p(1))-1.0D0).gt.1.0D-32) write(6,*) "NG"
 if (abs(real(a%p(2))-1.0D0).gt.1.0D-32) write(6,*) "NG"
 if (abs(imag(a%p(1))-2.0D0).gt.1.0D-32) write(6,*) "NG"
 if (abs(imag(a%p(2))-2.0D0).gt.1.0D-32) write(6,*) "NG"
 print *,'pass'
end
