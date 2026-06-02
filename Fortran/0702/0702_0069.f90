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
      integer(1),dimension(:,:)::a
      integer(1),dimension(ubound(a,1),size(a,2))::ax
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
      dimension i(:)
      integer(1),dimension(ubound(i,1),1+ubound(i,1)):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i,x1,x2,x3) result(ar)
      dimension i(:)
     entry    baax(x1,i,x2,x3) result(ar)
     entry    baaax(x1,x2,i,x3) result(ar)
     entry    baaaax(x1,x2,x3,i) result(ar)
      integer(1),dimension(ubound(i,1),ubound(i,1)+1):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     subroutine xx(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
      if (len(x1)/=2)print *,'fail'
      if (len(x2)/=2)print *,'fail'
      if (len(x3)/=2)print *,'fail'
      if (ubound(x1,1)/=3)print *,'fail'
      if (ubound(x2,1)/=3)print *,'fail'
      if (ubound(x3,1)/=3)print *,'fail'
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
  integer(1) bb(2,3)
  integer za(k3,4,5)
  type z
  integer za
  end type
  type(z)::y(k3,4,5)

  za(k3,4,k3+1:5)=(/4,5/)
  if (any(aa(xx,xx,za(k3,4,k3+1:5),xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,za(k3,4,k3+1:5),xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,za(k3,4,k3+1:5),xx)
  call chk(aa(xx,xx,za(k3,4,k3+1:5),xx),iu)
  bb=aa(xx,xx,za(k3,4,k3+1:5),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(za(k3,4,k3+1:5),xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(za(k3,4,k3+1:5),xx,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(za(k3,4,k3+1:5),xx,xx,xx)
  call chk(aax(za(k3,4,k3+1:5),xx,xx,xx),iu)
  bb=aax(za(k3,4,k3+1:5),xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,za(k3,4,k3+1:5),xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,za(k3,4,k3+1:5),xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(xx,za(k3,4,k3+1:5),xx,xx)
  call chk(aaax(xx,za(k3,4,k3+1:5),xx,xx),iu)
  bb=aaax(xx,za(k3,4,k3+1:5),xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,za(k3,4,k3+1:5),xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,za(k3,4,k3+1:5),xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,za(k3,4,k3+1:5),xx)
  call chk(aaaax(xx,xx,za(k3,4,k3+1:5),xx),iu)
  bb=aaaax(xx,xx,za(k3,4,k3+1:5),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,za(k3,4,k3+1:5))/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,za(k3,4,k3+1:5)))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,za(k3,4,k3+1:5))
  call chk(aaaaax(xx,xx,xx,za(k3,4,k3+1:5)),iu)
  bb=aaaaax(xx,xx,xx,za(k3,4,k3+1:5))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  y(k3,4,4:k3+2)%za=(/12,15/)
  if (any(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  call chk(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx),iu)
  bb=aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)
  call chk(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx),iu)
  bb=aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)
  call chk(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx),iu)
  bb=aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  call chk(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx),iu)
  bb=aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)
  call chk(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3),iu)
  bb=aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
