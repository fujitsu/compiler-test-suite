call aaaa
print *,'pass'
contains
subroutine aaaa
integer(1),dimension(80*1024+1)::i1=(/(0,i=1,80*1024+1)/)
integer(2),dimension(80*1024+1)::i2=(/(0,i=1,80*1024+1)/)
integer(4),dimension(80*1024+1)::i4=(/(0,i=1,80*1024+1)/)
integer(8),dimension(80*1024+1)::i8=(/(0,i=1,80*1024+1)/)
real(4),dimension(80*1024+1)::r=(/(0.0,i=1,80*1024+1)/)
real(8),dimension(80*1024+1)::d=(/(0.0d0,i=1,80*1024+1)/)
real(16),dimension(80*1024+1)::q=(/(0.0q0,i=1,80*1024+1)/)
complex(4),dimension(80*1024+1)::c=(/((0.0,0.0),i=1,80*1024+1)/)
complex(8),dimension(80*1024+1)::dc=(/((0.0d0,0.0d0),i=1,80*1024+1)/)
complex(16),dimension(80*1024+1)::qc=(/((0.0q0,0.0q0),i=1,80*1024+1)/)
logical(1),dimension(80*1024+1)::l1=(/(.false.,i=1,80*1024+1)/)
logical(2),dimension(80*1024+1)::l2=(/(.false.,i=1,80*1024+1)/)
logical(4),dimension(80*1024+1)::l4=(/(.false.,i=1,80*1024+1)/)
logical(8),dimension(80*1024+1)::l8=(/(.false.,i=1,80*1024+1)/)

if(sum(i1).ne.0) print *,'fail'
if(sum(i2).ne.0) print *,'fail'
if(sum(i4).ne.0) print *,'fail'
if(sum(i8).ne.0) print *,'fail'
if(sum(r).ne.0) print *,'fail'
if(sum(d).ne.0) print *,'fail'
if(sum(q).ne.0) print *,'fail'
if(sum(c).ne.0) print *,'fail'
if(sum(dc).ne.0) print *,'fail'
if(sum(qc).ne.0) print *,'fail'
if(any(l1.neqv..false.)) print *,'fail'
if(any(l2.neqv..false.)) print *,'fail'
if(any(l4.neqv..false.)) print *,'fail'
if(any(l8.neqv..false.)) print *,'fail'
end subroutine
end
