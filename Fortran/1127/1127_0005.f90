 call s1
 print *,'pass'
 end
 subroutine s1
 pointer  a11v,a12v,a21v,a22v,b11v,b12v,b21v,b22v,b31v,b32v,nn,rr,ii,cc,sb 
 logical(1),dimension(:)::a11v,a12v
 logical(4),dimension(:)::a21v,a22v
 real(16)  ,dimension(:)::b11v,b12v
 integer(8),dimension(:)::b21v,b22v
 complex(16),dimension(:)::b31v,b32v
 logical(1),dimension(6),target::a11t,a12t
 logical(4),dimension(6),target::a21t,a22t
 real(16)  ,dimension(6),target::b11t,b12t
 integer(8),dimension(6),target::b21t,b22t
 complex(16),dimension(6),target::b31t,b32t
 logical ::nn
 real(16)::rr
 integer(8)::ii
 complex(16)::cc,cy,cx
 integer(4)::sb(:)
 integer(4),target::sbt(6)
 allocate(nn,rr,ii,cc)
 a11v=>a11t(2::2); a12v=>a12t(2::2); a21v=>a21t(2::2); a22v=>a22t(2::2); b11v=>b11t(2::2); b12v=>b12t(2::2); b21v=>b21t(2::2); b22v=>b22t(2::2); b31v=>b31t(2::2); b32v=>b32t(2::2)
 sb=>sbt(2::2)
 a11v=.true.;a12v=a11v
 a21v=.true.;a22v=a21v
 b11v=0;b12v=b11v
 b21v=0;b22v=b21v
 b31v=0;b32v=b31v
 sb=(/1,2,3/)
 call ss1(a11v,a12v,a21v,a22v,b11v,b12v,b21v,b22v,b31v,b32v,nn,rr,ii,cc,sb)
 contains
 subroutine ss1 &
         (a11v,a12v,a21v,a22v,b11v,b12v,b21v,b22v,b31v,b32v,nn,rr,ii,cc,sb)
 logical(1),dimension(:),pointer::a11v,a12v
 logical(4),dimension(:),pointer::a21v,a22v
 real(16)  ,dimension(:),pointer::b11v,b12v
 integer(8),dimension(:),pointer::b21v,b22v
 complex(16),dimension(:),pointer::b31v,b32v
 logical ,pointer::nn
 real(16),pointer::rr
 integer(8),pointer::ii
 complex(16),pointer::cc
 integer(4),pointer::sb(:)
 complex(16)::cx,cy
!
 do i2=1,3; do i1=1,3;do i0=0,1
   a11v(i1)=.false.; if (i0==1)a11v(i1)=.true.
   a12v(i2)=.false.; if (i0==1)a12v(i2)=.true.
   a21v(i1)=a11v(i1);a22v(i2)=a12v(i2)
   b11v(i1)=i1;b12v(i2)=i2
   b21v(i1)=i1;b22v(i2)=i2
   b31v(i1)=cmplx(i1,i1); b32v(i2)=cmplx(i2,i2)
!
   ii=sum(b21v*b22v);rr=sum(b11v*b12v)
   cx=sum(conjg(b31v)*b22v); cy=sum(conjg(cmplx(b21v))*b32v)
   nn=any(a11v.and.a12v)
!
   select case (nn)
     case (.true.)
       select case (dot_product(a11v(sb(1):sb(3)),a22v(sb(1):sb(3)))); case (.false.);print *,'fail'; end select
       select case (dot_product(a21v(sb(1):sb(3)),a12v(sb(1):sb(3)))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(a11v(sb(1):sb(3)),a22v(sb(1):sb(3)))); case (.true.);print *,'fail'; end select
       select case (dot_product(a21v(sb(1):sb(3)),a12v(sb(1):sb(3)))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(b21v(sb(1):sb(3)),b12v(sb(1):sb(3))))print *,'fail'
   if (cx/=dot_product(b31v(sb(1):sb(3)),b12v(sb(1):sb(3))))print *,'fail'
   if (ii/=dot_product(b11v(sb(1):sb(3)),b22v(sb(1):sb(3))))print *,'fail'
   if (cx/=dot_product(b31v(sb(1):sb(3)),b22v(sb(1):sb(3))))print *,'fail'
   if (cy/=dot_product(b11v(sb(1):sb(3)),b32v(sb(1):sb(3))))print *,'fail'
   if (cy/=dot_product(b21v(sb(1):sb(3)),b32v(sb(1):sb(3))))print *,'fail'
   select case (nn)
     case (.true.)
       select case (dot_product(a11v(sb),a22v(sb))); case (.false.);print *,'fail'; end select
       select case (dot_product(a21v(sb),a12v(sb))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(a11v(sb),a22v(sb))); case (.true.);print *,'fail'; end select
       select case (dot_product(a21v(sb),a12v(sb))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(b21v(sb),b12v(sb)))print *,'fail'
   if (cx/=dot_product(b31v(sb),b12v(sb)))print *,'fail'
   if (ii/=dot_product(b11v(sb),b22v(sb)))print *,'fail'
   if (cx/=dot_product(b31v(sb),b22v(sb)))print *,'fail'
   if (cy/=dot_product(b11v(sb),b32v(sb)))print *,'fail'
   if (cy/=dot_product(b21v(sb),b32v(sb)))print *,'fail'
   select case (nn)
     case (.true.)
       select case (dot_product(reshape(a11v(sb),(/sb(3)/)),reshape(a22v(sb),(/sb(3)/)))); case (.false.);print *,'fail'; end select
       select case (dot_product(reshape(a21v(sb),(/sb(3)/)),reshape(a12v(sb),(/sb(3)/)))); case (.false.);print *,'fail'; end select
     case (.false.)
       select case (dot_product(reshape(a11v(sb),(/sb(3)/)),reshape(a22v(sb),(/sb(3)/)))); case (.true.);print *,'fail'; end select
       select case (dot_product(reshape(a21v(sb),(/sb(3)/)),reshape(a12v(sb),(/sb(3)/)))); case (.true.);print *,'fail'; end select
   end select
   if (rr/=dot_product(reshape(b21v(sb),(/sb(3)/)),reshape(b12v(sb),(/sb(3)/))))print *,'fail'
   if (cx/=dot_product(reshape(b31v(sb),(/sb(3)/)),reshape(b12v(sb),(/sb(3)/))))print *,'fail'
   if (ii/=dot_product(reshape(b11v(sb),(/sb(3)/)),reshape(b22v(sb),(/sb(3)/))))print *,'fail'
   if (cx/=dot_product(reshape(b31v(sb),(/sb(3)/)),reshape(b22v(sb),(/sb(3)/))))print *,'fail'
   if (cy/=dot_product(reshape(b11v(sb),(/sb(3)/)),reshape(b32v(sb),(/sb(3)/))))print *,'fail'
   if (cy/=dot_product(reshape(b21v(sb),(/sb(3)/)),reshape(b32v(sb),(/sb(3)/))))print *,'fail'
 end do; end do;end do
!
 end subroutine
 end
