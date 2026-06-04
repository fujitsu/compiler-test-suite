 call s1
 print *,'pass'
 end
 module zccm
  character*(*),parameter,dimension(3)::xx='xx'
end 
 module mcc
  integer,parameter:: ri(1,1,1,1,1,2,3)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,1,2,3/))
  contains
    function   chk(a,iu)  result(axzz)
      integer(1),pointer,dimension(:,:,:,:,:,:,:)::a
      integer(1),dimension(ubound(a,dim=1),ubound(a,dim=2),ubound(a,dim=3),ubound(a,dim=4),ubound(a,dim=5),ubound(a,dim=6),ubound(a,dim=7))::ax
      logical(8),dimension(ubound(a,dim=1),ubound(a,dim=2),ubound(a,dim=3),ubound(a,dim=4),ubound(a,dim=5),ubound(a,dim=6),ubound(a,dim=7))::axzz
      integer(4)::iu
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
      integer(1),pointer::ar(:,:,:,:,:,:,:)
      character*(*) x1(:),x2(:),x3(:)
      allocate(ar(ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)+0,ubound(i,1)+1))
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i,x1,x2,x3) result(ar)
      dimension i(:)
      integer(1),pointer::ar(:,:,:,:,:,:,:)
     entry    baax(x1,i,x2,x3) result(ar)
     entry    baaax(x1,x2,i,x3) result(ar)
     entry    baaaax(x1,x2,x3,i) result(ar)
      character*(*) x1(:),x2(:),x3(:)
      allocate(ar(ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)-1,ubound(i,1)+0,ubound(i,1)+1))
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
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
  integer,parameter,dimension(2)::w2=(/4,5/)
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax,aaaax=>baaax,aaaaax=>baaaax
  integer(1) bb(1,1,1,1,1,2,3)

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
  end subroutine
end
