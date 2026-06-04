 call s1
 print *,'pass'
 end
 module m1
 type x
  integer(4)::x1; integer(8)::x2
 end type
 integer(1),pointer::i1a(:),i1z(:),i1w(:)
 integer(8),pointer::i8a(:),i8z(:),i8w(:)
 real  (16),pointer::rxa(:),rxz(:),rxw(:)
 complex(16),pointer::cxa(:),cxz(:),cxw(:)
 character(8),pointer::cha(:),chz(:),chw(:)
 type(x),pointer::tya(:),tyz(:),tyw(:)
 logical(1),pointer::mask(:)
 integer::i1=1,i2=2,i3=3,i4=4,i5=5,i6=6,i7=7,i8=8,i9=9,i10=10
 integer(2),pointer::v(:)
 contains
 subroutine set
 allocate(i1a(10),i8a(10),rxa(10),cxa(10),cha(10),tya(10),mask(10))
 allocate(i1z(10),i8z(10),rxz(10),cxz(10),chz(10),tyz(10))
 allocate(i1w(10),i8w(10),rxw(10),cxw(10),chw(10),tyw(10))
 allocate(v(2));v=(/1,10/)
 i1a=(/ (-huge(i1a)+i,i=0,size(i1a)-1)/)
 i8a=(/ (-huge(i8a)+i,i=0,size(i8a)-1)/)
 rxa=(/ (-huge(rxa)+i,i=0,size(rxa)-1)/)
 cxa=(/ (cmplx(-huge(rxa)+i,-huge(rxa)+i,16),i=0,size(rxa)-1)/)
 cha=(/ (char(ichar('a')+i),i=0,size(cha)-1)/)
 tya=(/ (x(-huge(i1a)+i,-huge(i8a)+i),i=0,size(tya)-1)/)
 i1z=(/ (-huge(i1a)+i,i=0,size(i1a)-1)/)
 i8z=(/ (-huge(i8a)+i,i=0,size(i8a)-1)/)
 rxz=(/ (-huge(rxa)+i,i=0,size(rxa)-1)/)
 cxz=(/ (cmplx(-huge(rxa)+i,-huge(rxa)+i,16),i=0,size(rxa)-1)/)
 chz=(/ (char(ichar('a')+i),i=0,size(cha)-1)/)
 tyz=(/ (x(-huge(i1a)+i,-huge(i8a)+i),i=0,size(tya)-1)/)
 i1z(1:2)=i1z(1:10:9)
 i8z(1:2)=i8z(1:10:9)
 rxz(1:2)=rxz(1:10:9)
 cxz(1:2)=cxz(1:10:9)
 chz(1:2)=chz(1:10:9)
 tyz(1:2)=tyz(1:10:9)
 mask=.true.
 end subroutine
 subroutine ss1
 call    z21(reshape(cha,(/1,1,1,1,1,1,10/)),cha)
 call    z20(cha )
 end subroutine
 subroutine z21(chx,chy)
 integer*8,parameter,dimension(7)::sh=(/1,1,1,1,1,1,2/)
 character(*)  ,dimension(:,:,:,:,:,:,:),optional::chx
 character(*)  ,dimension(:),optional::chy
 iu=11
 open(iu,delim='quote')
 write(iu,*) pack(chx(:,:,:,:,:,:,(/1,10/)),reshape(mask(1:2),sh),chx(1,1,1,1,1,1,:))
 write(iu,*) pack(chx(:,:,:,:,:,:,v),reshape(mask(1:2),sh),chx(1,1,1,1,1,1,:))
 write(iu,*) pack(chx(:,:,:,:,:,:,1:10:9),reshape(mask(1:2),sh),chx(1,1,1,1,1,1,:))
 write(iu,*) pack(chx(:,:,:,:,:,:,i1:i10:i9),reshape(mask(1:2),sh),chx(1,1,1,1,1,1,:))
 write(iu,*) pack(chx(:,:,:,:,:,:,1:10:9),reshape(mask(1:2),sh),chy)
 write(iu,*) pack(chx(:,:,:,:,:,:,i1:i10:i9),reshape(mask(1:2),sh),chy)
 write(iu,*) pack(chx(:,:,:,:,:,:,v),reshape(mask(1:2),sh),chy)
 write(iu,*) pack(chx(:,:,:,:,:,:,(/1,10/)),reshape(mask(1:2),sh),chy)
 rewind iu
 do i=1,8
   read (iu,*) chw
   if (any(chw/=chz))print *,'fail'
 end do
 read (iu,*,end=1) chw
 print *,'fail'
1 end subroutine
 subroutine z20(chx,chy)
 character(*)  ,dimension(:),optional::chx
 character(*)  ,dimension(:),optional::chy
 iu=12
 open(iu,delim='quote')
 write(iu,*) pack(chx(1:2),mask(1:2),chy)
 rewind iu
 read (iu,*) chw(1:2)
 end subroutine
 end module
 subroutine s1
 use m1
 call set
 call ss1
 end
