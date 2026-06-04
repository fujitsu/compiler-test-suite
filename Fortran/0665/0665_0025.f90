module moda
integer(1),dimension(3),public::i1=0
integer(2),dimension(3),public::i2=0
integer(4),dimension(3),public::i4=0
integer(8),dimension(3),public::i8=0
real(4),dimension(3),public::r=0
real(8),dimension(3),public::d=0
real(16),dimension(3),public::q=0
complex(4),dimension(3),public::c=0
complex(8),dimension(3),public::dc=0
complex(16),dimension(3),public::qc=0
logical(1),dimension(3),public::l1=.false.
logical(2),dimension(3),public::l2=.false.
logical(4),dimension(3),public::l4=.false.
logical(8),dimension(3),public::l8=.false.
end module moda
use moda

if(any(i1/=0)) print *,'fail'
if(any(i2/=0)) print *,'fail'
if(any(i4/=0)) print *,'fail'
if(any(i8/=0)) print *,'fail'
if(any(r/=0)) print *,'fail'
if(any(d/=0)) print *,'fail'
if(any(q/=0)) print *,'fail'
if(any(c/=(0.0,0.0))) print *,'fail'
if(any(dc/=(0.0,0.0))) print *,'fail'
if(any(qc/=(0.0,0.0))) print *,'fail'
do i=1,3
if(l1(i).neqv..false.) print *,'fail'
if(l2(i).neqv..false.) print *,'fail'
if(l4(i).neqv..false.) print *,'fail'
if(l8(i).neqv..false.) print *,'fail'
end do
print *,'pass'
end

