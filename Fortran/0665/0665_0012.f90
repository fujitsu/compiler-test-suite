call aaaa
print *,'pass'
end
subroutine aaaa
integer(1),dimension(0)::i1=1
integer(2),dimension(0)::i2=1
integer(4),dimension(0)::i4=1
integer(8),dimension(0)::i8=1
real(4),dimension(0)::r=1.0
real(8),dimension(0)::d=1.0d0
real(16),dimension(0)::q=1.0q0
complex(4),dimension(0)::c=(1.0,1.0)
complex(8),dimension(0)::dc=(1.0d0,1.0d0)
complex(16),dimension(0)::qc=(1.0q0,1.0q0)
logical(1),dimension(0)::l1=.true.
logical(2),dimension(0)::l2=.true.
logical(4),dimension(0)::l4=.true.
logical(8),dimension(0)::l8=.true.

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
if(size(l1).ne.0) print *,'fail'
if(size(l2).ne.0) print *,'fail'
if(size(l4).ne.0) print *,'fail'
if(size(l8).ne.0) print *,'fail'
end

