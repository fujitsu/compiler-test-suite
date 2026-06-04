call aaaa
print *,'pass'
contains
subroutine aaaa
integer(1),dimension(100),parameter::i1=0
integer(2),dimension(100),parameter::i2=0
integer(4),dimension(100),parameter::i4=0
integer(8),dimension(100),parameter::i8=0
real(4),dimension(100),parameter::r=0.0
real(8),dimension(100),parameter::d=0.0d0
real(16),dimension(100),parameter::q=0.0q0
complex(4),dimension(100),parameter::c=(0.0,0.0)
complex(8),dimension(100),parameter::dc=(0.0d0,0.0d0)
complex(16),dimension(100),parameter::qc=(0.0q0,0.0q0)
logical(1),dimension(100),parameter::l1=.false.
logical(2),dimension(100),parameter::l2=.false.
logical(4),dimension(100),parameter::l4=.false.
logical(8),dimension(100),parameter::l8=.false.

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
