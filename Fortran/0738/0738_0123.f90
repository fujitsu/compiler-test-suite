type z
  complex(16),allocatable,dimension(:)::p
end type
type (z) a,b
 allocate(b%p(2))
 b%p(1)=(1.0D0,2.0D0)
 b%p(2)=(2.0D0,3.0D0)
 a=b
 deallocate(b%p)
 if (size(a%p)/=2) write(6,*) "NG"
 if (abs(real(a%p(1))-1.0D0).gt.1.0D-32) write(6,*) "NG"
 if (abs(real(a%p(2))-2.0D0).gt.1.0D-32) write(6,*) "NG"
 if (abs(imag(a%p(1))-2.0D0).gt.1.0D-32) write(6,*) "NG"
 if (abs(imag(a%p(2))-3.0D0).gt.1.0D-32) write(6,*) "NG"
 deallocate(a%p)
 print *,'pass'
end
