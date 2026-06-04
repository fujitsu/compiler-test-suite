 call s1
 print *,'pass'
 end
 subroutine s1
 call ss1
 end
 subroutine ss1
 logical(1),dimension(-5:3)::a11v,a12v
 logical(4),dimension(-5:3)::a21v,a22v
 real(16)  ,dimension(-5:3)::b11v,b12v
 integer(8),dimension(-5:3)::b21v,b22v
 complex(16),dimension(-5:3)::b31v,b32v
 logical ::nn
 real(16)::rr
 integer(8)::ii
 complex(16)::cc
 integer(4)::sb(3)=(/1,2,3/)
 a11v=.true.;a12v=a11v
 a21v=.true.;a22v=a21v
 b11v=99
 b21v=99
 b31v=99
 b11v(1:)=0;b12v=b11v
 b21v(1:)=0;b22v=b21v
 b31v(1:)=0;b32v=b31v
 do i2=1,3; do i1=1,3;do i0=0,1
   a11v(i1)=.false.; if (i0==1)a11v(i1)=.true.
   a12v(i2)=.false.; if (i0==1)a12v(i2)=.true.
   a21v(i1)=a11v(i1);a22v(i2)=a12v(i2)
   b11v(i1)=i1;b12v(i2)=i2
   b21v(i1)=i1;b22v(i2)=i2
   b31v(i1)=cmplx(i1,i1); b32v(i2)=cmplx(i2,i2)
!
   ii=sum(b21v(1:)*b22v(1:));rr=sum(b11v(1:)*b12v(1:));cc=sum(conjg(b31v(1:))*b32v(1:));nn=any(a11v(1:).and.a11v(1:))
!
   select case (nn)
     case (.true.)
       select case (dot_product(a11v(sb).and..true.,a12v(sb).and..true.)); case (.false.);print *,'fail'; end select
       select case (dot_product(a21v(sb).and..true.,a22v(sb).and..true.)); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(a11v(sb).and..true.,a12v(sb).and..true.)); case (.true.);print *,'fail'; end select
       select case (dot_product(a21v(sb).and..true.,a22v(sb).and..true.)); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(b11v(sb)*1,b12v(sb)*1))print *,'fail'
   if (ii/=dot_product(b21v(sb)*1,b22v(sb)*1))print *,'fail'
   if (cc/=dot_product(b31v(sb)*1,b32v(sb)*1))print *,'fail'
   select case (nn)
     case (.true.)
       select case (dot_product(reshape(a11v(sb).and..true.,(/sb(3)/)),reshape(a12v(sb).and..true.,(/sb(3)/)))); case (.false.);print *,'fail'; end select
       select case (dot_product(reshape(a21v(sb).and..true.,(/sb(3)/)),reshape(a22v(sb).and..true.,(/sb(3)/)))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(reshape(a11v(sb).and..true.,(/sb(3)/)),reshape(a12v(sb).and..true.,(/sb(3)/)))); case (.true.);print *,'fail'; end select
       select case (dot_product(reshape(a21v(sb).and..true.,(/sb(3)/)),reshape(a22v(sb).and..true.,(/sb(3)/)))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(reshape(b11v(sb)*1,(/sb(3)/)),reshape(b12v(sb)*1,(/sb(3)/))))print *,'fail'
   if (ii/=dot_product(reshape(b21v(sb)*1,(/sb(3)/)),reshape(b22v(sb)*1,(/sb(3)/))))print *,'fail'
   if (cc/=dot_product(reshape(b31v(sb)*1,(/sb(3)/)),reshape(b32v(sb)*1,(/sb(3)/))))print *,'fail'
 end do; end do;end do

 end
