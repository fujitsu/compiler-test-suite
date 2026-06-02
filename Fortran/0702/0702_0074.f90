 call s1
 print *,'pass'
 end
 module zccm
  character*(*),parameter,dimension(3)::xx='xx'
end 
 module mcc
  integer(1),parameter:: ri(1,1,1,1,1,2,3)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,1,2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    function   chki8(a,iu)  result(axzz)
      integer(1),dimension(:,:,:,:,:,:,:)::a
      integer(1),dimension(ubound(a,1),ubound(a,2),ubound(a,3),ubound(a,4),ubound(a,5),ubound(a,6),ubound(a,7))::ax
      logical(8),dimension(ubound(a,1),ubound(a,2),ubound(a,3),ubound(a,4),ubound(a,5),ubound(a,6),ubound(a,7))::axzz
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
      axzz=.not..true.
      if (any(shape(axzz)/=(/1,1,1,1,1,2,3/)))print *,'fail'
    end function
 end
 module m1
  use mcc,only:ri
   contains
     function ba(x1,x2,i,x3) result(ar)
      dimension i(:)
      integer*1 i
      integer(1),dimension(ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)+0,ubound(i,1)+1):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i,x1,x2,x3) result(ar)
      integer*1 i
      dimension i(:)
      integer(1),dimension(ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)+0,ubound(i,1)+1):: ar
     entry    baax(x1,i,x2,x3) result(ar)
     entry    baaax(x1,x2,i,x3) result(ar)
     entry    baaaax(x1,x2,x3,i) result(ar)
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
  integer(1),parameter,dimension(2)::w2=(/4,5/)
  integer(1)::k3
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax,aaaax=>baaax,aaaaax=>baaaax
  integer(1) bb(1,1,1,1,1,2,3)
  type z
  integer(1) za
  end type
  type(z)::y(k3,4,5)

  if (any(aa(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,w2,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,w2,xx)
  if (any(chk(aa(xx,xx,w2,xx),iu)))print *,'fail'
  bb=aa(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(w2,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(w2,xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(w2,xx,xx,xx)
  if (any(chk(aax(w2,xx,xx,xx),iu)))print *,'fail'
  bb=aax(w2,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,w2,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,w2,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,w2,xx,xx)
  if (any(chk(aaax(xx,w2,xx,xx),iu)))print *,'fail'
  bb=aaax(xx,w2,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,w2,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,w2,xx)
  if (any(chk(aaaax(xx,xx,w2,xx),iu)))print *,'fail'
  bb=aaaax(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,w2)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,w2))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,w2)
  if (any(chk(aaaaax(xx,xx,xx,w2),iu)))print *,'fail'
  bb=aaaaax(xx,xx,xx,w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  y(k3,4,4:k3+2)%za=(/12,15/)
  if (any(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(chk(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx),iu)))print *,'fail'
  bb=aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)
  if (any(chk(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx),iu)))print *,'fail'
  bb=aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)
  if (any(chk(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx),iu)))print *,'fail'
  bb=aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(chk(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx),iu)))print *,'fail'
  bb=aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)
  if (any(chk(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3),iu)))print *,'fail'
  bb=aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer(1) zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
