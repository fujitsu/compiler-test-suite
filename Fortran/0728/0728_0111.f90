 call s1
 print *,'pass'
 end
 module m1
  complex(16),pointer::a11,a21(:,:),a12,a22(:,:)
  type x
  complex(16),pointer::a11,a21(:,:),a12,a22(:,:)
  end type
  contains
  subroutine ss1(p11,p21,p12,p22)
  complex(16),pointer::p11,p21(:,:),p12,p22(:,:)
  allocate(p12,p22(4,6))
  p12=(10,-10)
  p22(::2,::2)=cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/)))
  p11=>p12
  if (.not.associated(p11))write(6,*) "NG"
  if (.not.associated(p11,p12))write(6,*) "NG"
  p21=>p22
  if (.not.associated(p21))write(6,*) "NG"
  if (.not.associated(p21,p22))write(6,*) "NG"
  if (p11/=(10,-10))write(6,*) "NG"
  if (any(abs((/p21(::2,::2)/)- (/cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/)))/))>0.0001))write(6,*) "NG"
  p21=>p22(::2,::2)
  if (.not.associated(p21,p22(::2,::2)))write(6,*) "NG"
  if (any(abs((/p21/)- (/cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/)))/))>0.0001))write(6,*) "NG"
  call sx1(p11,p12,p21,p22)
  call sx2(p11,p12,p21,p22)
  call sx3(p11,p12,p21,p22)
  call sy1(x(p11,p21,p12,p22))
  deallocate(p12,p22)
  if (associated(p12))write(6,*) "NG"
  if (associated(p11,p12))write(6,*) "NG"
  if (associated(p22))write(6,*) "NG"
  if (associated(p21,p22))write(6,*) "NG"
  allocate(p12,p22(2,3))
  p12=(20,-20)
  p22=cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/)))
  p11=>p12
  if (.not.associated(p11))write(6,*) "NG"
  if (.not.associated(p11,p12))write(6,*) "NG"
  p21=>p22(:,:)
  if (.not.associated(p21))write(6,*) "NG"
  if (.not.associated(p21,p22))write(6,*) "NG"
  if (p11/=(20,-20))write(6,*) "NG"
 write(1,*)p11,p12
 write(1,*)p21
 write(1,*)p22
 write(1,*)p21(:,:)
 write(1,*)p22(:,:)
 write(1,*)((p21(i1,i2),i1=1,2),i2=1,3)
 write(1,*)((p22(i3,i4),i3=1,2),i4=1,3)
  call chkio(p22,p11)
  contains
  subroutine chkio(a22,a11)
  complex(16),pointer::a22(:,:),a11
  rewind 1
  read(1,*) a22(:,1)
  if (a22(1,1)/=(20,-20))write(6,*) "NG"
  if (a22(2,1)/=(20,-20))write(6,*) "NG"
do i=1,6
  read(1,*) a22(:,:)
  if (any(abs((/a22/)- (/cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/)))/))>0.0001))write(6,*) "NG"
end do
  rewind 1
  read(1,*) a21
  if (a11/=(20,-20))write(6,*) "NG"
 end subroutine 
  subroutine sy1(xx)
  type(x)::xx
  call sx1(xx%a11,xx%a12,xx%a21,xx%a22)
  call sx2(xx%a11,xx%a12,xx%a21,xx%a22)
  call sx3(xx%a11,xx%a12,xx%a21,xx%a22)
 end subroutine 
  subroutine sx1(ps1,ps2,pa1,pa2)
  complex(16),pointer::ps1,pa1(:,:),ps2,pa2(:,:)
  if (ps1/=(10,-10))write(6,*) "NG"
  if (ps2/=(10,-10))write(6,*) "NG"
  if (any(abs(pa1- cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/))))>0.0001))write(6,*) "NG"
  if (any(abs(pa2(::2,::2)- cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/))))>0.0001))write(6,*) "NG"
 end subroutine 
  subroutine sx2(ps1,ps2,pa1,pa2)
  complex(16)::ps1,pa1(2,3),ps2,pa2(4,6)
  if (ps1/=(10,-10))write(6,*) "NG"
  if (ps2/=(10,-10))write(6,*) "NG"
  if (any(abs(pa1- cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/))))>0.0001))write(6,*) "NG"
  if (any(abs(pa2(::2,::2)- cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/))))>0.0001))write(6,*) "NG"
 end subroutine 
  subroutine sx3(ps1,ps2,pa1,pa2)
  complex(16)::ps1,pa1(:,:),ps2,pa2(:,:)
  if (ps1/=(10,-10))write(6,*) "NG"
  if (ps2/=(10,-10))write(6,*) "NG"
  if (any(abs(pa1- cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/))))>0.0001))write(6,*) "NG"
  if (any(abs(pa2(::2,::2)- cmplx(reshape((/1,2,3,4,5,6/),(/2,3/)),reshape((/1,2,3,4,5,6/),(/2,3/))))>0.0001))write(6,*) "NG"
 end subroutine 
 end subroutine 
end
 subroutine s1
 use m1
  call ss1(a11,a21,a12,a22)
end 
