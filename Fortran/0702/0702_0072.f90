 call s1
 print *,'pass'
 end
 module zccm
  character*(*),parameter,dimension(3)::xx='xx'
end 
 module mcc
  integer,parameter:: ri(1,1,1,1,1,2,3)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,1,2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    subroutine chki8(a,iu)
      integer(4),dimension(:,:,:,:,:,:,:)::a
      integer(4),dimension(ubound(a,1),ubound(a,2),ubound(a,3),ubound(a,4),ubound(a,5),ubound(a,6),ubound(a,7))::ax
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
      integer(4),dimension(ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)+0,ubound(i,1)+1):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i,x1,x2,x3) result(ar)
      dimension i(:)
      integer(4),dimension(ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)+0,ubound(i,1)+1):: ar
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
  integer,parameter,dimension(2)::w2=(/4,5/)
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax,aaaax=>baaax,aaaaax=>baaaax
  integer(4) bb(1,1,1,1,1,2,3)
  type z
  integer za
  end type

  if (any(aa(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,w2,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,w2,xx)
  call chk(aa(xx,xx,w2,xx),iu)
  bb=aa(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(w2,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(w2,xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(w2,xx,xx,xx)
  call chk(aax(w2,xx,xx,xx),iu)
  bb=aax(w2,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
