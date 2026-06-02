 call s1
 print *,'pass'
 end
 subroutine s1
 logical(1),dimension(6)::a11v,a12v
 logical(4),dimension(6)::a21v,a22v
 real(16)  ,dimension(6)::b11v,b12v
 integer(8),dimension(6)::b21v,b22v
 complex(16),dimension(6)::b31v,b32v
 logical ::nn
 real(16)::rr
 integer(8)::ii
 complex(16)::cc
 integer(4)::sb(6)
 a11v(2::2)=.true.;a12v(2::2)=a11v(2::2)
 a21v(2::2)=.true.;a22v(2::2)=a21v(2::2)
 b11v(2::2)=0;b12v(2::2)=b11v(2::2)
 b21v(2::2)=0;b22v(2::2)=b21v(2::2)
 b31v(2::2)=0;b32v(2::2)=b31v(2::2)
 sb(2::2)=(/1,2,3/)
 call ss1(a11v(2::2),a12v(2::2),a21v(2::2),a22v(2::2),b11v(2::2),b12v(2::2),b21v(2::2),b22v(2::2),b31v(2::2),b32v(2::2),nn,rr,ii,cc,sb(2::2))
 contains
 subroutine ss1 &
         (a11v,a12v,a21v,a22v,b11v,b12v,b21v,b22v,b31v,b32v,nn,rr,ii,cc,sb)
 logical(1),dimension(:)::a11v,a12v
 logical(4),dimension(:)::a21v,a22v
 real(16)  ,dimension(:)::b11v,b12v
 integer(8),dimension(:)::b21v,b22v
 complex(16),dimension(:)::b31v,b32v
 logical ::nn
 real(16)::rr
 integer(8)::ii
 complex(16)::cc
 integer(4)::sb(:)
!
 do i2=1,3; do i1=1,3;do i0=0,1
   a11v(i1)=.false.; if (i0==1)a11v(i1)=.true.
   a12v(i2)=.false.; if (i0==1)a12v(i2)=.true.
   a21v(i1)=a11v(i1);a22v(i2)=a12v(i2)
   b11v(i1)=i1;b12v(i2)=i2
   b21v(i1)=i1;b22v(i2)=i2
   b31v(i1)=cmplx(i1,i1); b32v(i2)=cmplx(i2,i2)
!
   ii=sum(b21v*b22v);rr=sum(b11v*b12v);cc=sum(conjg(b31v)*b32v);nn=any(a11v.and.a11v)
!
   select case (nn)
     case (.true.)
       select case (dot_product(a11v(sb(1):sb(3)),a12v(sb(1):sb(3)))); case (.false.);print *,'fail'; end select
       select case (dot_product(a21v(sb(1):sb(3)),a22v(sb(1):sb(3)))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(a11v(sb(1):sb(3)),a12v(sb(1):sb(3)))); case (.true.);print *,'fail'; end select
       select case (dot_product(a21v(sb(1):sb(3)),a22v(sb(1):sb(3)))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(b11v(sb(1):sb(3)),b12v(sb(1):sb(3))))print *,'fail'
   if (ii/=dot_product(b21v(sb(1):sb(3)),b22v(sb(1):sb(3))))print *,'fail'
   if (cc/=dot_product(b31v(sb(1):sb(3)),b32v(sb(1):sb(3))))print *,'fail'
   select case (nn)
     case (.true.)
       select case (dot_product(a11v(sb),a12v(sb))); case (.false.);print *,'fail'; end select
       select case (dot_product(a21v(sb),a22v(sb))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(a11v(sb),a12v(sb))); case (.true.);print *,'fail'; end select
       select case (dot_product(a21v(sb),a22v(sb))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(b11v(sb),b12v(sb)))print *,'fail'
   if (ii/=dot_product(b21v(sb),b22v(sb)))print *,'fail'
   if (cc/=dot_product(b31v(sb),b32v(sb)))print *,'fail'
   select case (nn)
     case (.true.)
       select case (dot_product(reshape(a11v(sb),(/sb(3)/)),reshape(a12v(sb),(/sb(3)/)))); case (.false.);print *,'fail'; end select
       select case (dot_product(reshape(a21v(sb),(/sb(3)/)),reshape(a22v(sb),(/sb(3)/)))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(reshape(a11v(sb),(/sb(3)/)),reshape(a12v(sb),(/sb(3)/)))); case (.true.);print *,'fail'; end select
       select case (dot_product(reshape(a21v(sb),(/sb(3)/)),reshape(a22v(sb),(/sb(3)/)))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(reshape(b11v(sb),(/sb(3)/)),reshape(b12v(sb),(/sb(3)/))))print *,'fail'
   if (ii/=dot_product(reshape(b21v(sb),(/sb(3)/)),reshape(b22v(sb),(/sb(3)/))))print *,'fail'
   if (cc/=dot_product(reshape(b31v(sb),(/sb(3)/)),reshape(b32v(sb),(/sb(3)/))))print *,'fail'
 end do; end do;end do
!
 end subroutine
 end
