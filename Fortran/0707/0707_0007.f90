 call s1
 print *,'pass'
 end
 module m1
  integer::iu
  integer::v2(2)=(/(i*2,i=1,2)/), &
           v3(2*3)=(/(i*2,i=1,2*3)/), &
           v4(2*3*4)=(/(i*2,i=1,2*3*4)/), &
           v5(2*3*4*5)=(/(i*2,i=1,2*3*4*5)/)
  interface i4
   module procedure i4_1,i4_2,i4_3,i4_4
  end interface
  integer::j1=1,j2=2,j3=3,j4=4,j5=5
  integer::n=1
  interface cmplx
   module procedure d,d1,d2,d3,d4,d5
  end interface
  contains
  function d1(n1,n2,n3) result(r)
  integer      ::n1(:),n2(:)
  character(n),pointer ::r(:)
  allocate(r(size(n1)))
  do i=1,size(n1)
  write(r(i),'(i1)')mod(n1(i),10)
  end do
  end function
  function d2(n1,n2,n3) result(r)
  integer      ::n1(:,:),n2(:,:)
  character(n) ,pointer::r(:,:)
  allocate(r(size(n1,1),size(n1,2)))
  do ii=1,size(n1,2)
  do i=1,size(n1,1)
  write(r(i,ii),'(i1)')mod(n1(i,ii),10)
  end do
  end do
  end function
  function d3(n1,n2,n3) result(r)
  integer      ::n1(:,:,:),n2(:,:,:)
  character(n),pointer ::r(:,:,:)
  allocate(r(size(n1,1),size(n1,2),size(n1,3)))
  do iii=1,size(n1,3)
  do ii=1,size(n1,2)
  do i=1,size(n1,1)
  write(r(i,ii,iii),'(i1)')mod(n1(i,ii,iii),10)
  end do
  end do
  end do
  end function
  function d4(n1,n2,n3) result(r)
  integer      ::n1(:,:,:,:),n2(:,:,:,:)
  character(n),pointer ::r(:,:,:,:)
  allocate(r(size(n1,1),size(n1,2),size(n1,3),size(n1,4)))
  do iiii=1,size(n1,4)
  do iii=1,size(n1,3)
  do ii=1,size(n1,2)
  do i=1,size(n1,1)
  write(r(i,ii,iii,iiii),'(i1)')mod(n1(i,ii,iii,iiii),10)
  end do
  end do
  end do
  end do
  end function
  function d5(n1,n2,n3) result(r)
  integer      ::n1(:,:,:,:,:),n2(:,:,:,:,:)
  character(n),pointer ::r(:,:,:,:,:)
  allocate(r(size(n1,1),size(n1,2),size(n1,3),size(n1,4),size(n1,5)))
  do iiiii=1,size(n1,5)
  do iiii=1,size(n1,4)
  do iii=1,size(n1,3)
  do ii=1,size(n1,2)
  do i=1,size(n1,1)
  write(r(i,ii,iii,iiii,iiiii),'(i1)')mod(n1(i,ii,iii,iiii,iiiii),10)
  end do
  end do
  end do
  end do
  end do
  end function
  character(n) function d(n1,n2,n3) result(r)
  write(r,'(i1)')mod(n1,10)
  end function
  subroutine i4_4(a)
   character(n),dimension(1,1,2*j3,4,5)::a,ax(1,1,2*2*j3,4,5);target ax
   character(n),dimension(:,:,:,:,:),pointer::ap
   ax(:,:,j2::j2,:,:)=a
   ap=>ax(:,:,j2::j2,:,:)
   call ss2(reshape(a, (/j2*j3,4*j5/)))
   call ss2(reshape(ap,(/j2*j3,4*j5/)))
   call ss2(reshape(ax(:,:,j2::j2,:,:),(/j2*j3,4*j5/)))
   call ss2(reshape(ax(:,:,v3,:,:),(/j2*j3,4*j5/)))
   call ss2(reshape((/(cmplx(i,i,16),i=11,11+2*3*4*5-1)/),(/j2*j3,4*j5/)))
   call ss3(reshape(a, (/j2*j3,4*j5/)))
   call ss3(reshape(ap,(/j2*j3,4*j5/)))
   call ss3(reshape(ax(:,:,j2::j2,:,:),(/j2*j3,4*j5/)))
   call ss3(reshape(ax(:,:,v3,:,:),(/j2*j3,4*j5/)))
   call ss3(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   write(iu,*) reshape(a,(/j2*j3,4*j5/))
   write(iu,*) reshape(ap,(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(:,:,j2::j2,:,:),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(:,:,v3,:,:),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(:,:,v3,:,:),(/j2*j3,4*j5/))
   call ss4
  end subroutine
  subroutine i4_3(a)
   character(n),dimension(2*j3,4,5)::a,ax(2*2*j3,4,5);target ax
   character(n),dimension(:,:,:),pointer::ap
   ax(j2::j2,:,:)=a
   ap=>ax(j2::j2,:,:)
   call ss2(reshape(a, (/j2*j3,4*j5/)))
   call ss2(reshape(ap,(/j2*j3,4*j5/)))
   call ss2(reshape(ax(j2::j2,:,:),(/j2*j3,4*j5/)))
   call ss2(reshape(ax(v3,:,:),(/j2*j3,4*j5/)))
   call ss2(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   call ss3(reshape(a, (/j2*j3,4*j5/)))
   call ss3(reshape(ap,(/j2*j3,4*j5/)))
   call ss3(reshape(ax(j2::j2,:,:),(/j2*j3,4*j5/)))
   call ss3(reshape(ax(v3,:,:),(/j2*j3,4*j5/)))
   call ss3(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   write(iu,*) reshape(a,(/j2*j3,4*j5/))
   write(iu,*) reshape(ap,(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(j2::j2,:,:),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(v3,:,:),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(v3,:,:),(/j2*j3,4*j5/))
   call ss4
  end subroutine
  subroutine i4_2(a)
   character(n),dimension(j2*j3,4*j5)::a,ax(2*j2*j3,4*j5);target ax
   character(n),dimension(:,:),pointer::ap
   ax(j2::j2,:)=a
   ap=>ax(j2::j2,:)
   call ss2(reshape(a, (/j2*j3,4*j5/)))
   call ss2(reshape(ap,(/j2*j3,4*j5/)))
   call ss2(reshape(ax(j2::j2,:),(/j2*j3,4*j5/)))
   call ss2(reshape(ax(v3,:),(/j2*j3,4*j5/)))
   call ss2(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   call ss3(reshape(a, (/j2*j3,4*j5/)))
   call ss3(reshape(ap,(/j2*j3,4*j5/)))
   call ss3(reshape(ax(j2::j2,:),(/j2*j3,4*j5/)))
   call ss3(reshape(ax(v3,:),(/j2*j3,4*j5/)))
   call ss3(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   write(iu,*) reshape(a,(/j2*j3,4*j5/))
   write(iu,*) reshape(ap,(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(j2::j2,:),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(v3,:),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(v3,:),(/j2*j3,4*j5/))
   call ss4
  end subroutine
  subroutine i4_1(a)
   character(n),dimension(2*j3*4*5)::a,ax(2*2*3*4*5);target ax
   character(n),dimension(:),pointer::ap
   ax(j2::j2)=a
   ap=>ax(j2::j2)
   call ss2(reshape(a, (/j2*j3,4*j5/)))
   call ss2(reshape(ap,(/j2*j3,4*j5/)))
   call ss2(reshape(ax(j2::j2),(/j2*j3,4*j5/)))
   call ss2(reshape(ax(v5),(/j2*j3,4*j5/)))
   call ss2(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   call ss3(reshape(a, (/j2*j3,4*j5/)))
   call ss3(reshape(ap,(/j2*j3,4*j5/)))
   call ss3(reshape(ax(j2::j2),(/j2*j3,4*j5/)))
   call ss3(reshape(ax(v5),(/j2*j3,4*j5/)))
   call ss3(reshape((/(cmplx(i,i,16),i=11,11+2*j3*4*5-1)/),(/j2*j3,4*j5/)))
   write(iu,*) reshape(a,(/j2*j3,4*j5/))
   write(iu,*) reshape(ap,(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(j2::j2),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(v5),(/j2*j3,4*j5/))
   write(iu,*) reshape(ax(v5),(/j2*j3,4*j5/))
   call ss4
  end subroutine
  subroutine ss2(a)
     character(n),dimension(j2*j3,4*j5)::a
     if (any(a/= reshape((/(cmplx(i,i,16),i=11,11+2*3*4*5-1)/),(/j2*j3,4*j5/))))print *,'fail'
  end subroutine
  subroutine ss3(a)
     character(n),dimension(  :,:  )::a
     if (any(a/= reshape((/(cmplx(i,i,16),i=11,11+2*3*4*5-1)/),(/j2*j3,4*j5/))))print *,'fail'
     if (size(a)/=2*3*4*5)print *,'fail'
  end subroutine
  subroutine ss4()
     character(n),dimension(j2*j3,4*j5)::a; rewind iu
     do iz=1,5; read(iu,*) a
     if (any(a/= reshape((/(cmplx(i,i,16),i=11,11+2*3*4*5-1)/),(/j2*j3,4*j5/))))print *,'fail'
     enddo
  end subroutine
 end
 subroutine s1
 use m1
 integer,dimension(2*3*4*5),parameter::a1=reshape((/(i,i=11,11+2*3*4*5-1)/),(/2*3*4*5/))
 integer,dimension(2*3,4*5),parameter::a2=reshape((/(i,i=11,11+2*3*4*5-1)/),(/2*3,4*5/))
 integer,dimension(2*3,4,5),parameter::a3=reshape((/(i,i=11,11+2*3*4*5-1)/),(/2*3,4,5/))
 integer,dimension(1,1,2*3,4,5),parameter::a4=reshape((/(i,i=11,11+2*3*4*5-1)/),(/1,1,2*3,4,5/))
 iu=65
 open(iu+1,delim='quote')
 open(iu+2,delim='quote')
 open(iu+3,delim='quote')
 open(iu+4,delim='quote')
 iu=iu+1;call i4(cmplx(a1,a1,16))
 iu=iu+1;call i4(cmplx(a2,a2,16))
 iu=iu+1;call i4(cmplx(a3,a3,16))
 iu=iu+1;call i4(cmplx(a4,a4,16))
 end
