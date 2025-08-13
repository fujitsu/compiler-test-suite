 call s1
 print *,'pass'
 end
 module m1
  character,pointer::a11,a21(:,:),a12,a22(:,:)
  type x
  character,pointer::a11,a21(:,:),a12,a22(:,:)
  end type
  contains
  subroutine ss1(p11,p21,p12,p22)
  character(*),pointer::p11,p21(:,:),p12,p22(:,:)
  allocate(p12,p22(4,6))
  p12='x'
  p22(::2,::2)=reshape((/'1','2','3','4','5','6'/),(/2,3/))
  p11=>p12
  if (.not.associated(p11))write(6,*) "NG"
  if (.not.associated(p11,p12))write(6,*) "NG"
  p21=>p22
  if (.not.associated(p21))write(6,*) "NG"
  if (.not.associated(p21,p22))write(6,*) "NG"
  if (p11/='x')write(6,*) "NG"
  if (any((/p21(::2,::2)/)/=(/'1','2','3','4','5','6'/)))write(6,*) "NG"
  p21=>p22(::2,::2)
  if (.not.associated(p21,p22(::2,::2)))write(6,*) "NG"
  if (any((/p21/)/=(/'1','2','3','4','5','6'/)))write(6,*) "NG"
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
  p12='y'
  p22=reshape((/'1','2','3','4','5','6'/),(/2,3/))
  p11=>p12
  if (.not.associated(p11))write(6,*) "NG"
  if (.not.associated(p11,p12))write(6,*) "NG"
  p21=>p22(:,:)
  if (.not.associated(p21))write(6,*) "NG"
  if (.not.associated(p21,p22))write(6,*) "NG"
  if (p11/='y')write(6,*) "NG"
 open(28,delim='quote')
 write(28,*)p11
 write(28,*)p12
 write(28,*)p21
 write(28,*)p22
 write(28,*)p21(:,:)
 write(28,*)p22(:,:)
 write(28,*)((p21(i1,i2),i1=1,2),i2=1,3)
 write(28,*)((p22(i3,i4),i3=1,2),i4=1,3)
  call chkio(p22,p11)
  contains
  subroutine chkio(a22,a11)
  character(*),pointer::a22(:,:),a11
  rewind 28
  read(28,*) a22(:,1)
  if (a22(1,1)/='y')write(6,*) "NG"
  if (a22(2,1)/='y')write(6,*) "NG"
do i=1,6
  read(28,*) a22(:,:)
  if (any((/a22/)/= (/reshape((/'1','2','3','4','5','6'/),(/2,3/))/)))write(6,*) "NG"
end do
  rewind 28
  read(28,*) a21
  if (a11/='y')write(6,*) "NG"
 end subroutine
  subroutine sy1(xx)
  type(x)::xx
  call sx1(xx%a11,xx%a12,xx%a21,xx%a22)
  call sx2(xx%a11,xx%a12,xx%a21,xx%a22)
  call sx3(xx%a11,xx%a12,xx%a21,xx%a22)
 end subroutine
  subroutine sx1(ps1,ps2,pa1,pa2)
  character(*),pointer::ps1,pa1(:,:),ps2,pa2(:,:)
  if (ps1/='x')write(6,*) "NG"
  if (ps2/='x')write(6,*) "NG"
  if (any(pa1/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
  if (any(pa2(::2,::2)/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 end subroutine
  subroutine sx2(ps1,ps2,pa1,pa2)
  character(*)::ps1,pa1(2,3),ps2,pa2(4,6)
  if (ps1/='x')write(6,*) "NG"
  if (ps2/='x')write(6,*) "NG"
  if (any(pa1/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
  if (any(pa2(::2,::2)/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 end subroutine
  subroutine sx3(ps1,ps2,pa1,pa2)
  character(*)::ps1,pa1(:,:),ps2,pa2(:,:)
  if (ps1/='x')write(6,*) "NG"
  if (ps2/='x')write(6,*) "NG"
  if (any(pa1/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
  if (any(pa2(::2,::2)/=reshape((/'1','2','3','4','5','6'/),(/2,3/))))write(6,*) "NG"
 end subroutine
 end subroutine
end
 subroutine s1
 use m1
  call ss1(a11,a21,a12,a22)
end
