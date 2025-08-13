 call s1
 print *,'pass'
 end
 module m1
  type z
    integer w
  end type
  type(z),pointer::a11,a21(:,:),a12,a22(:,:)
  type x
  type(z),pointer::a11,a21(:,:),a12,a22(:,:)
  end type
  contains
  subroutine ss1(p11,p21,p12,p22)
  type(z),pointer::p11,p21(:,:),p12,p22(:,:)
  allocate(p12,p22(4,6))
  p12=z(10)
  p22(::2,::2)=reshape((/z(1),z(2),z(3),z(4),z(5),z(6)/),(/2,3/))
  p11=>p12
  if (.not.associated(p11))write(6,*) "NG"
  if (.not.associated(p11,p12))write(6,*) "NG"
  p21=>p22
  if (.not.associated(p21))write(6,*) "NG"
  if (.not.associated(p21,p22))write(6,*) "NG"
  if (p11%w/=10)write(6,*) "NG"
  if (any((/p21(::2,::2)%w/)/=(/(1),(2),(3),(4),(5),(6)/)))write(6,*) "NG"
  p21=>p22(::2,::2)
  if (.not.associated(p21,p22(::2,::2)))write(6,*) "NG"
  if (any((/p21%w/)/=(/(1),(2),(3),(4),(5),(6)/)))write(6,*) "NG"
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
  p12=z(20)
  p22=reshape((/z(1),z(2),z(3),z(4),z(5),z(6)/),(/2,3/))
  p11=>p12
  if (.not.associated(p11))write(6,*) "NG"
  if (.not.associated(p11,p12))write(6,*) "NG"
  p21=>p22(:,:)
  if (.not.associated(p21))write(6,*) "NG"
  if (.not.associated(p21,p22))write(6,*) "NG"
  if (p11%w/=20)write(6,*) "NG"
 write(29,*)p11
 write(29,*)p12
 write(29,*)p21
 write(29,*)p22
 write(29,*)p21(:,:)
 write(29,*)p22(:,:)
 write(29,*)((p21(i1,i2),i1=1,2),i2=1,3)
 write(29,*)((p22(i3,i4),i3=1,2),i4=1,3)
  call chkio(p22,p11)
  contains
  subroutine chkio(a22,a11)
  type(z),pointer::a22(:,:),a11
  rewind 29
  read(29,*) a22(:,1)
  if (a22(1,1)%w/=20)write(6,*) "NG"
  if (a22(2,1)%w/=20)write(6,*) "NG"
do i=1,6
  read(29,*) a22(:,:)
  if (any(abs((/a22%w/)- (/reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))/))>0.0001))write(6,*) "NG"
end do
  rewind 29
  read(29,*) a21
  if (a11%w/=20)write(6,*) "NG"
 end subroutine
  subroutine sy1(xx)
  type(x)::xx
  call sx1(xx%a11,xx%a12,xx%a21,xx%a22)
  call sx2(xx%a11,xx%a12,xx%a21,xx%a22)
  call sx3(xx%a11,xx%a12,xx%a21,xx%a22)
 end subroutine
  subroutine sx1(ps1,ps2,pa1,pa2)
  type(z),pointer::ps1,pa1(:,:),ps2,pa2(:,:)
  if (ps1%w/=10)write(6,*) "NG"
  if (ps2%w/=10)write(6,*) "NG"
  if (any(pa1%w/=reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))))write(6,*) "NG"
  if (any(pa2(::2,::2)%w/=reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))))write(6,*) "NG"
 end subroutine
  subroutine sx2(ps1,ps2,pa1,pa2)
  type(z)::ps1,pa1(2,3),ps2,pa2(4,6)
  if (ps1%w/=10)write(6,*) "NG"
  if (ps2%w/=10)write(6,*) "NG"
  if (any(pa1%w/=reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))))write(6,*) "NG"
  if (any(pa2(::2,::2)%w/=reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))))write(6,*) "NG"
 end subroutine
  subroutine sx3(ps1,ps2,pa1,pa2)
  type(z)::ps1,pa1(:,:),ps2,pa2(:,:)
  if (ps1%w/=10)write(6,*) "NG"
  if (ps2%w/=10)write(6,*) "NG"
  if (any(pa1%w/=reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))))write(6,*) "NG"
  if (any(pa2(::2,::2)%w/=reshape((/(1),(2),(3),(4),(5),(6)/),(/2,3/))))write(6,*) "NG"
 end subroutine
 end subroutine
end
 subroutine s1
 use m1
  call ss1(a11,a21,a12,a22)
end
