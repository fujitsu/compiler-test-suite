type y
  complex(8),allocatable,dimension(:)::q
end type
type z
  type(y)               ,dimension(1)::i
  complex(4),allocatable,dimension(:)::p
end type
type (z)    ,allocatable,dimension(:)::a,b
 allocate(a(1),b(1))
 allocate(b(1)%p(1))
 allocate(b(1)%i(1)%q(1))
 b(1)%p=(1.0E0,2.0E0)
 b(1)%i(1)%q=(3.0D0,4.0D0)
 a=b
 deallocate(b(1)%p)
 deallocate(b(1)%i(1)%q)
 if (size(a(1)%p)/=1) write(6,*) "NG"
 if (size(a(1)%i(1)%q)/=1) write(6,*) "NG"
 if (abs(real(a(1)%p(1))-1.0E0).gt.1.0E-8) write(6,*) "NG"
 if (abs(imag(a(1)%p(1))-2.0E0).gt.1.0E-8) write(6,*) "NG"
 if (abs(real(a(1)%i(1)%q(1))-3.0D0).gt.1.0D-16) write(6,*) "NG"
 if (abs(imag(a(1)%i(1)%q(1))-4.0D0).gt.1.0D-16) write(6,*) "NG"
 print *,'pass'
end
