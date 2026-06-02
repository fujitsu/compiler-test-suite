integer(1),dimension(80*1024+1)::i1
integer(2),dimension(80*1024+1)::i2
integer(4),dimension(80*1024+1)::i4
integer(8),dimension(80*1024+1)::i8
real(4),dimension(80*1024+1)::r
real(8),dimension(80*1024+1)::d
real(16),dimension(80*1024+1)::q
complex(4),dimension(80*1024+1)::c
complex(8),dimension(80*1024+1)::dc
complex(16),dimension(80*1024+1)::qc
logical(1),dimension(80*1024+1)::l1
logical(2),dimension(80*1024+1)::l2
logical(4),dimension(80*1024+1)::l4
logical(8),dimension(80*1024+1)::l8
common /com1/i1,i2,i4,i8
common /com2/r,d,q
common /com3/c,dc,qc
common /com4/l1,l2,l4,l8

if(any(i1/=0)) print *,'fail'
if(any(i2/=0)) print *,'fail'
if(any(i4/=0)) print *,'fail'
if(any(i8/=0)) print *,'fail'
if(any(r/=0)) print *,'fail'
if(any(d/=0)) print *,'fail'
if(any(q/=0)) print *,'fail'
if(any(c/=0)) print *,'fail'
if(any(dc/=0)) print *,'fail'
if(any(qc/=0)) print *,'fail'
if(size(l1).ne.80*1024+1) print *,'fail'
if(size(l2).ne.80*1024+1) print *,'fail'
if(size(l4).ne.80*1024+1) print *,'fail'
if(size(l8).ne.80*1024+1) print *,'fail'
print *,'pass'
end
block data
integer(1),dimension(80*1024+1)::i1=0
integer(2),dimension(80*1024+1)::i2=0
integer(4),dimension(80*1024+1)::i4=0
integer(8),dimension(80*1024+1)::i8=0
real(4),dimension(80*1024+1)::r=0
real(8),dimension(80*1024+1)::d=0
real(16),dimension(80*1024+1)::q=0
complex(4),dimension(80*1024+1)::c=0
complex(8),dimension(80*1024+1)::dc=0
complex(16),dimension(80*1024+1)::qc=0
logical(1),dimension(80*1024+1)::l1=.false.
logical(2),dimension(80*1024+1)::l2=.false.
logical(4),dimension(80*1024+1)::l4=.false.
logical(8),dimension(80*1024+1)::l8=.false.
common /com1/i1,i2,i4,i8
common /com2/r,d,q
common /com3/c,dc,qc
common /com4/l1,l2,l4,l8
end

