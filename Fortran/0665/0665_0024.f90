module moda
integer(1),dimension(3),private::i1=10
integer(2),dimension(3),private::i2=10
integer(4),dimension(3),private::i4=10
integer(8),dimension(3),private::i8=10
real(4),dimension(3),private::r=10
real(8),dimension(3),private::d=10
real(16),dimension(3),private::q=10
complex(4),dimension(3),private::c=10
complex(8),dimension(3),private::dc=10
complex(16),dimension(3),private::qc=10
logical(1),dimension(3),private::l1=.true.
logical(2),dimension(3),private::l2=.true.
logical(4),dimension(3),private::l4=.true.
logical(8),dimension(3),private::l8=.true.
end module moda
use moda
integer(1),dimension(3)::i1=0
integer(2),dimension(3)::i2=0
integer(4),dimension(3)::i4=0
integer(8),dimension(3)::i8=0
real(4),dimension(3)::r=0
real(8),dimension(3)::d=0
real(16),dimension(3)::q=0
complex(4),dimension(3)::c=0
complex(8),dimension(3)::dc=0
complex(16),dimension(3)::qc=0
logical(1),dimension(3)::l1=.false.
logical(2),dimension(3)::l2=.false.
logical(4),dimension(3)::l4=.false.
logical(8),dimension(3)::l8=.false.

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

