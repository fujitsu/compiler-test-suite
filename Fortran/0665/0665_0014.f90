call aaaa
print *,'pass'
end
subroutine aaaa
integer(1),dimension(10*10*10)::i1=0
integer(2),dimension(10*10*10)::i2=0
integer(4),dimension(10*10*10)::i4=0
integer(8),dimension(10*10*10)::i8=0
real(4),dimension(10*10*10)::r=0.0
real(8),dimension(10*10*10)::d=0.0d0
real(16),dimension(10*10*10)::q=0.0q0
complex(4),dimension(10*10*10)::c=(0.0,0.0)
complex(8),dimension(10*10*10)::dc=(0.0d0,0.0d0)
complex(16),dimension(10*10*10)::qc=(0.0q0,0.0q0)
logical(1),dimension(10*10*10)::l1=.false.
logical(2),dimension(10*10*10)::l2=.false.
logical(4),dimension(10*10*10)::l4=.false.
logical(8),dimension(10*10*10)::l8=.false.

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
if(size(l1).ne.1000) print *,'fail'
if(size(l2).ne.1000) print *,'fail'
if(size(l4).ne.1000) print *,'fail'
if(size(l8).ne.1000) print *,'fail'
end

