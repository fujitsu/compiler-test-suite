 call s1
 print *,'pass'
 end
module m1
  interface ff
    module procedure fs,fa
  end interface
  contains
   function fs(a) result(r)
     logical a,r
     r=a
   end function
   function fa(a) result(r)
     logical,dimension(:):: a,r(size(a))
     r=a
   end function
 end
 subroutine s1
 use m1
 integer,parameter::z1=1,z2=1,z3=4
 logical,parameter::t=.true.,f=.false.
 complex  :: a1=(1,2),b1=(1,2)
 integer  :: a2=1    ,b2=1
 logical  :: a3=t    ,b3=t
 complex  ,dimension(2):: a4=(1,2),b4=(1,2)
 integer  ,dimension(2):: a5=1    ,b5=1
 logical  ,dimension(2):: a6=t    ,b6=t
 logical(z1)::c1,d1(2)
 integer(z2)::c2,d2(2)
 real   (z3)::c3,d3(2)

 c1=a1/=b1;if (c1)print *,'fail'
 c1=a2/=b2;if (c1)print *,'fail'
 c1=a3.neqv.b3;if (c1)print *,'fail'
 d1(2)=a1/=b1;if (d1(2))print *,'fail'
 d1(2)=a2/=b2;if (d1(2))print *,'fail'
 d1(2)=a3.neqv.b3;if (d1(2))print *,'fail'
 d1(:2)=a1/=b1;if (any(d1(:)))print *,'fail'
 d1(:2)=a2/=b2;if (any(d1(:)))print *,'fail'
 d1(:2)=a3.neqv.b3;if (any(d1(:)))print *,'fail'
 c1=a4(2)/=b4(2);if (c1)print *,'fail'
 c1=a5(2)/=b5(2);if (c1)print *,'fail'
 c1=a6(2).neqv.b6(2);if (c1)print *,'fail'
 d1(2)=a4(2)/=b4(2);if (d1(2))print *,'fail'
 d1(2)=a5(2)/=b5(2);if (d1(2))print *,'fail'
 d1(2)=a6(2).neqv.b6(2);if (d1(2))print *,'fail'
 d1(:2)=a4/=b4;if (any(d1(:)))print *,'fail'
 d1(:2)=a5/=b5;if (any(d1(:)))print *,'fail'
 d1(:2)=a6.neqv.b6;if (any(d1(:)))print *,'fail'

 c1=ff(a1/=b1);if (c1)print *,'fail'
 c1=ff(a2/=b2);if (c1)print *,'fail'
 c1=ff(a3.neqv.b3);if (c1)print *,'fail'
 d1(2)=ff(a1/=b1);if (d1(2))print *,'fail'
 d1(2)=ff(a2/=b2);if (d1(2))print *,'fail'
 d1(2)=ff(a3.neqv.b3);if (d1(2))print *,'fail'
 d1(:2)=ff(a1/=b1);if (any(d1(:)))print *,'fail'
 d1(:2)=ff(a2/=b2);if (any(d1(:)))print *,'fail'
 d1(:2)=ff(a3.neqv.b3);if (any(d1(:)))print *,'fail'
 c1=ff(a4(2)/=b4(2));if (c1)print *,'fail'
 c1=ff(a5(2)/=b5(2));if (c1)print *,'fail'
 c1=ff(a6(2).neqv.b6(2));if (c1)print *,'fail'
 d1(2)=ff(a4(2)/=b4(2));if (d1(2))print *,'fail'
 d1(2)=ff(a5(2)/=b5(2));if (d1(2))print *,'fail'
 d1(2)=ff(a6(2).neqv.b6(2));if (d1(2))print *,'fail'
 d1(:2)=ff(a4/=b4);if (any(d1(:)))print *,'fail'
 d1(:2)=ff(a5/=b5);if (any(d1(:)))print *,'fail'
 d1(:2)=ff(a6.neqv.b6);if (any(d1(:)))print *,'fail'

 c2=a1/=b1;if (c1)print *,'fail'
 c2=a2/=b2;if (c1)print *,'fail'
 c2=a3.neqv.b3;if (c1)print *,'fail'
 d2(2)=a1/=b1;if (d1(2))print *,'fail'
 d2(2)=a2/=b2;if (d1(2))print *,'fail'
 d2(2)=a3.neqv.b3;if (d1(2))print *,'fail'
 c2=a4(2)/=b4(2);if (c1)print *,'fail'
 c2=a5(2)/=b5(2);if (c1)print *,'fail'
 c2=a6(2).neqv.b6(2);if (c1)print *,'fail'
 d2(2)=a4(2)/=b4(2);if (d1(2))print *,'fail'
 d2(2)=a5(2)/=b5(2);if (d1(2))print *,'fail'
 d2(2)=a6(2).neqv.b6(2);if (d1(2))print *,'fail'

 c2=ff(a1/=b1);if (c1)print *,'fail'
 c2=ff(a2/=b2);if (c1)print *,'fail'
 c2=ff(a3.neqv.b3);if (c1)print *,'fail'
 d2(2)=ff(a1/=b1);if (d1(2))print *,'fail'
 d2(2)=ff(a2/=b2);if (d1(2))print *,'fail'
 d2(2)=ff(a3.neqv.b3);if (d1(2))print *,'fail'
 c2=ff(a4(2)/=b4(2));if (c1)print *,'fail'
 c2=ff(a5(2)/=b5(2));if (c1)print *,'fail'
 c2=ff(a6(2).neqv.b6(2));if (c1)print *,'fail'
 d2(2)=ff(a4(2)/=b4(2));if (d1(2))print *,'fail'
 d2(2)=ff(a5(2)/=b5(2));if (d1(2))print *,'fail'
 d2(2)=ff(a6(2).neqv.b6(2));if (d1(2))print *,'fail'
!
 end
