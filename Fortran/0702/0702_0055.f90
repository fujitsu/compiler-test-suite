 call s1
 print *,'pass'
 end
 module zccm
  character*(*),parameter,dimension(3)::xx='xx'
end 
 module mcc
  integer,parameter:: ri(2,3)=reshape((/1,2,3,4,5,6/),(/2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    subroutine chki8(a,iu)
      integer(8),dimension(:,:)::a
      integer(8),dimension(size(a,1),size(a,2))::ax
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
    end subroutine
 end
 module m1
  use mcc,only:ri
   contains
     function ba(x1,x2,i,x3) result(ar)
      integer(1) i
      integer(8),dimension(i,3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
     end function
     function bax(i,x1,x2,x3) result(ar)
     entry    baax(x1,i,x2,x3) result(ar)
     entry    baaax(x1,x2,i,x3) result(ar)
     entry    baaaax(x1,x2,x3,i) result(ar)
      integer(1) i
      integer(8),dimension(i,3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
     end function
     subroutine xx(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
      if (len(x1)/=2)print *,'fail'
      if (len(x2)/=2)print *,'fail'
      if (len(x3)/=2)print *,'fail'
      if (size(x1)/=3)print *,'fail'
      if (size(x2)/=3)print *,'fail'
      if (size(x3)/=3)print *,'fail'
      if (any(x1/='xx'))print *,'fail'
    end subroutine
 end
 subroutine s1
  use zccm
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax,aaaax=>baaax,aaaaax=>baaaax
  integer(8) bb(2,3)
  integer za(k3,4,5)
  type z
  integer za
  end type

  if (any(aa(xx,xx,2_1,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,2_1,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,2_1,xx)
  call chk(aa(xx,xx,2_1,xx),iu)
  bb=aa(xx,xx,2_1,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(2_1,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(2_1,xx,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(2_1,xx,xx,xx)
  call chk(aax(2_1,xx,xx,xx),iu)
  bb=aax(2_1,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,2_1,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,2_1,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(xx,2_1,xx,xx)
  call chk(aaax(xx,2_1,xx,xx),iu)
  bb=aaax(xx,2_1,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,2_1,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,2_1,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,2_1,xx)
  call chk(aaaax(xx,xx,2_1,xx),iu)
  bb=aaaax(xx,xx,2_1,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,2_1)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,2_1))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,2_1)
  call chk(aaaaax(xx,xx,xx,2_1),iu)
  bb=aaaaax(xx,xx,xx,2_1)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  za(k3,4,5)=2
  if (any(aa(xx,xx,int(za(k3,k3+1,5),1),xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,int(za(k3,k3+1,5),1),xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,int(za(k3,k3+1,5),1),xx)
  call chk(aa(xx,xx,int(za(k3,k3+1,5),1),xx),iu)
  bb=aa(xx,xx,int(za(k3,k3+1,5),1),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(int(za(k3,k3+1,5),1),xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(int(za(k3,k3+1,5),1),xx,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(int(za(k3,k3+1,5),1),xx,xx,xx)
  call chk(aax(int(za(k3,k3+1,5),1),xx,xx,xx),iu)
  bb=aax(int(za(k3,k3+1,5),1),xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,int(za(k3,k3+1,5),1),xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,int(za(k3,k3+1,5),1),xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(xx,int(za(k3,k3+1,5),1),xx,xx)
  call chk(aaax(xx,int(za(k3,k3+1,5),1),xx,xx),iu)
  bb=aaax(xx,int(za(k3,k3+1,5),1),xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,int(za(k3,k3+1,5),1),xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,int(za(k3,k3+1,5),1),xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,int(za(k3,k3+1,5),1),xx)
  call chk(aaaax(xx,xx,int(za(k3,k3+1,5),1),xx),iu)
  bb=aaaax(xx,xx,int(za(k3,k3+1,5),1),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,int(za(k3,k3+1,5),1))/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,int(za(k3,k3+1,5),1)))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,int(za(k3,k3+1,5),1))
  call chk(aaaaax(xx,xx,xx,int(za(k3,k3+1,5),1)),iu)
  bb=aaaaax(xx,xx,xx,int(za(k3,k3+1,5),1))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  integer zf
  character*(*) c
  zf=ichar(c)
  end function
end
