call aaaa
print *,'pass'
contains
subroutine aaaa
integer(1),dimension(1)::i1=(/0/)
integer(2),dimension(1)::i2=(/0/)
integer(4),dimension(1)::i4=(/0/)
integer(8),dimension(1)::i8=(/0/)
real(4),dimension(1)::r=(/0.0/)
real(8),dimension(1)::d=(/0.0d0/)
real(16),dimension(1)::q=(/0.0q0/)
complex(4),dimension(1)::c=(/(0.0,0.0)/)
complex(8),dimension(1)::dc=(/(0.0d0,0.0d0)/)
complex(16),dimension(1)::qc=(/(0.0q0,0.0q0)/)
logical(1),dimension(1)::l1=(/.false./)
logical(2),dimension(1)::l2=(/.false./)
logical(4),dimension(1)::l4=(/.false./)
logical(8),dimension(1)::l8=(/.false./)

if(i1(1).ne.0) print *,'fail'
if(i2(1).ne.0) print *,'fail'
if(i4(1).ne.0) print *,'fail'
if(i8(1).ne.0) print *,'fail'
if(r(1).ne.0) print *,'fail'
if(d(1).ne.0) print *,'fail'
if(q(1).ne.0) print *,'fail'
if(c(1).ne.(0.0,0.0)) print *,'fail'
if(dc(1).ne.(0.0d0,0.0d0)) print *,'fail'
if(qc(1).ne.(0.0q0,0.0q0)) print *,'fail'
if(l1(1).neqv..false.) print *,'fail'
if(l2(1).neqv..false.) print *,'fail'
if(l4(1).neqv..false.) print *,'fail'
if(l8(1).neqv..false.) print *,'fail'

end subroutine
end

