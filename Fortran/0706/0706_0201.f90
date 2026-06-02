 call s1
 print *,'pass'
 end
 module m1
 integer(1)::i1s,i1a(2),j1s,j1a(2)
 integer(2)::i2s,i2a(2),j2s,j2a(2)
 integer(4)::i4s,i4a(2),j4s,j4a(2)
 integer(8)::i8s,i8a(2),j8s,j8a(2)
 real   (4)::r4s,r4a(2),w4s,w4a(2)
 real   (8)::r8s,r8a(2),w8s,w8a(2)
 real  (16)::rxs,rxa(2),wxs,wxa(2)
 interface ci1s
  module procedure ci1s,di1s,ei1s,fi1s,gi1s,hi1s,ii1s
 end interface
 interface ci1x
  module procedure ci1x,di1x,ei1x,fi1x,gi1x,hi1x,ii1x
 end interface
 interface ci1y
  module procedure ci1y,di1y,ei1y,fi1y,gi1y,hi1y,ii1y
 end interface
 contains
 subroutine set
 i1s=-1;i1a=(/-2,-3/)
 i2s=-1;i2a=(/-2,-3/)
 i4s=-1;i4a=(/-2,-3/)
 i8s=-1;i8a=(/-2,-3/)
 r4s=-1;r4a=(/-2,-3/)
 r8s=-1;r8a=(/-2,-3/)
 rxs=-1;rxa=(/-2,-3/)
 end subroutine
 subroutine ss1()
 call       ci1s(r=i1s)
 call       ci1s(r=i1s,j1s=-2_1)
 call       ci1s(r=0_1,j1s= 0_1)
 call       ci1x(r=(/i1s,i1s/),j1=(/-2_1,-3_1/))
 call       ci1x(r=(/0_1,0_1/),j1=(/-0_1,-0_1/))
 call       ci1x(r=(/0_1,i1s/),j1=(/-0_1,-3_1/))
 call       ci1x(r=(/i1s,0_1/),j1=(/-2_1,-0_1/))
 call       ci1y(r=i1a)
 call       ci1y(r=i1a,j1=(/-12_1,-13_1/))
 call       ci1y(r=(/0_1,0_1/),j1=(/0_1,0_1/))
 call       ci1y(r=(/i1a(1),0_1/),j1=(/-12_1,0_1/))
 call       ci1y(r=(/0_1,i1a(2)/),j1=(/0_1,-13_1/))
 call       ci1s(r=int(i1s,2))
 call       ci1s(r=int(i1s,2),j1s=-2_2)
 call       ci1s(r=int(0_1,2),j1s= 0_2)
 call       ci1x(r=int((/i1s,i1s/),2),j1=int((/-2_1,-3_1/),2))
 call       ci1x(r=int((/0_1,0_1/),2),j1=int((/-0_1,-0_1/),2))
 call       ci1x(r=int((/0_1,i1s/),2),j1=int((/-0_1,-3_1/),2))
 call       ci1x(r=int((/i1s,0_1/),2),j1=int((/-2_1,-0_1/),2))
 call       ci1y(r=int(i1a,2))
 call       ci1y(r=int(i1a,2),j1=int((/-12_1,-13_1/),2))
 call       ci1y(r=int((/0_1,0_1/),2),j1=int((/0_1,0_1/),2))
 call       ci1y(r=int((/i1a(1),0_1/),2),j1=int((/-12_1,0_1/),2))
 call       ci1y(r=int((/0_1,i1a(2)/),2),j1=int((/0_1,-13_1/),2))
 call       ci1s(r=int(i1s,4))
 call       ci1s(r=int(i1s,4),j1s=-2_4)
 call       ci1s(r=int(0_1,4),j1s= 0_4)
 call       ci1x(r=int((/i1s,i1s/),4),j1=int((/-2_1,-3_1/),4))
 call       ci1x(r=int((/0_1,0_1/),4),j1=int((/-0_1,-0_1/),4))
 call       ci1x(r=int((/0_1,i1s/),4),j1=int((/-0_1,-3_1/),4))
 call       ci1x(r=int((/i1s,0_1/),4),j1=int((/-2_1,-0_1/),4))
 call       ci1y(r=int(i1a,4))
 call       ci1y(r=int(i1a,4),j1=int((/-12_1,-13_1/),4))
 call       ci1y(r=int((/0_1,0_1/),4),j1=int((/0_1,0_1/),4))
 call       ci1y(r=int((/i1a(1),0_1/),4),j1=int((/-12_1,0_1/),4))
 call       ci1y(r=int((/0_1,i1a(2)/),4),j1=int((/0_1,-13_1/),4))
 call       ci1s(r=int(i1s,8))
 call       ci1s(r=int(i1s,8),j1s=-2_8)
 call       ci1s(r=int(0_1,8),j1s= 0_8)
 call       ci1x(r=int((/i1s,i1s/),8),j1=int((/-2_1,-3_1/),8))
 call       ci1x(r=int((/0_1,0_1/),8),j1=int((/-0_1,-0_1/),8))
 call       ci1x(r=int((/0_1,i1s/),8),j1=int((/-0_1,-3_1/),8))
 call       ci1x(r=int((/i1s,0_1/),8),j1=int((/-2_1,-0_1/),8))
 call       ci1y(r=int(i1a,8))
 call       ci1y(r=int(i1a,8),j1=int((/-12_1,-13_1/),8))
 call       ci1y(r=int((/0_1,0_1/),8),j1=int((/0_1,0_1/),8))
 call       ci1y(r=int((/i1a(1),0_1/),8),j1=int((/-12_1,0_1/),8))
 call       ci1y(r=int((/0_1,i1a(2)/),8),j1=int((/0_1,-13_1/),8))
 call       ci1s(r=real(i1s,4))
 call       ci1s(r=real(i1s,4),j1s=real(-2_4,4))
 call       ci1s(r=real(0_1,4),j1s=real( 0_4,4))
 call       ci1x(r=real((/i1s,i1s/),4),j1=real((/-2_1,-3_1/),4))
 call       ci1x(r=real((/0_1,0_1/),4),j1=real((/-0_1,-0_1/),4))
 call       ci1x(r=real((/0_1,i1s/),4),j1=real((/-0_1,-3_1/),4))
 call       ci1x(r=real((/i1s,0_1/),4),j1=real((/-2_1,-0_1/),4))
 call       ci1y(r=real(i1a,4))
 call       ci1y(r=real(i1a,4),j1=real((/-12_1,-13_1/),4))
 call       ci1y(r=real((/0_1,0_1/),4),j1=real((/0_1,0_1/),4))
 call       ci1y(r=real((/i1a(1),0_1/),4),j1=real((/-12_1,0_1/),4))
 call       ci1y(r=real((/0_1,i1a(2)/),4),j1=real((/0_1,-13_1/),4))
 call       ci1s(r=real(i1s,8))
 call       ci1s(r=real(i1s,8),j1s=real(-2_8,8))
 call       ci1s(r=real(0_1,8),j1s=real( 0_8,8))
 call       ci1x(r=real((/i1s,i1s/),8),j1=real((/-2_1,-3_1/),8))
 call       ci1x(r=real((/0_1,0_1/),8),j1=real((/-0_1,-0_1/),8))
 call       ci1x(r=real((/0_1,i1s/),8),j1=real((/-0_1,-3_1/),8))
 call       ci1x(r=real((/i1s,0_1/),8),j1=real((/-2_1,-0_1/),8))
 call       ci1y(r=real(i1a,8))
 call       ci1y(r=real(i1a,8),j1=real((/-12_1,-13_1/),8))
 call       ci1y(r=real((/0_1,0_1/),8),j1=real((/0_1,0_1/),8))
 call       ci1y(r=real((/i1a(1),0_1/),8),j1=real((/-12_1,0_1/),8))
 call       ci1y(r=real((/0_1,i1a(2)/),8),j1=real((/0_1,-13_1/),8))
 call       ci1s(r=real(i1s,16))
 call       ci1s(r=real(i1s,16),j1s=real(-2_8,16))
 call       ci1s(r=real(0_1,16),j1s=real( 0_8,16))
 call       ci1x(r=real((/i1s,i1s/),16),j1=real((/-2_1,-3_1/),16))
 call       ci1x(r=real((/0_1,0_1/),16),j1=real((/-0_1,-0_1/),16))
 call       ci1x(r=real((/0_1,i1s/),16),j1=real((/-0_1,-3_1/),16))
 call       ci1x(r=real((/i1s,0_1/),16),j1=real((/-2_1,-0_1/),16))
 call       ci1y(r=real(i1a,16))
 call       ci1y(r=real(i1a,16),j1=real((/-12_1,-13_1/),16))
 call       ci1y(r=real((/0_1,0_1/),16),j1=real((/0_1,0_1/),16))
 call       ci1y(r=real((/i1a(1),0_1/),16),j1=real((/-12_1,0_1/),16))
 call       ci1y(r=real((/0_1,i1a(2)/),16),j1=real((/0_1,-13_1/),16))
 end subroutine
 subroutine ii1y(j1,r)
 real(16),optional::j1(:); real(16),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine ii1x(j1,r)
 real(16),optional::j1(:); real(16),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine ii1s(j1s,r)
 real(16),optional::j1s; real(16),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 subroutine hi1y(j1,r)
 real(8),optional::j1(:); real(8),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine hi1x(j1,r)
 real(8),optional::j1(:); real(8),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine hi1s(j1s,r)
 real(8),optional::j1s; real(8),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 subroutine gi1y(j1,r)
 real(4),optional::j1(:); real(4),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine gi1x(j1,r)
 real(4),optional::j1(:); real(4),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine gi1s(j1s,r)
 real(4),optional::j1s; real(4),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 subroutine fi1y(j1,r)
 integer(8),optional::j1(:); integer(8),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine fi1x(j1,r)
 integer(8),optional::j1(:); integer(8),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine fi1s(j1s,r)
 integer(8),optional::j1s; integer(8),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 subroutine ei1y(j1,r)
 integer(4),optional::j1(:); integer(4),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine ei1x(j1,r)
 integer(4),optional::j1(:); integer(4),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine ei1s(j1s,r)
 integer(4),optional::j1s; integer(4),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 subroutine di1y(j1,r)
 integer(2),optional::j1(:); integer(2),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine di1x(j1,r)
 integer(2),optional::j1(:); integer(2),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine di1s(j1s,r)
 integer(2),optional::j1s; integer(2),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 subroutine ci1y(j1,r)
 integer(1),optional::j1(:); integer(1),optional::r(:)
 if (any(max(i1a,i1a,j1)/=r)) print *,'fail'
 end subroutine
 subroutine ci1x(j1,r)
 integer(1),optional::j1(:); integer(1),optional::r(:)
 if (any(max(i1s,i1s,j1)/=r)) print *,'fail'
 end subroutine
 subroutine ci1s(j1s,r)
 integer(1),optional::j1s; integer(1),optional::r
 if (max(i1s,i1s,j1s)/=r) print *,'fail'
 end subroutine
 end module
 subroutine s1
 use m1
 call set
 call ss1
 end
