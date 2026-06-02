 call s1
 print *,'pass'
 end
 module mcc
  integer,parameter:: ri(1,1,1,1,1,2,3)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,1,2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    function   chki8(a,iu) result(axzz)
      integer(8),dimension(:,:,:,:,:,:,:)::a
      integer(8),dimension(ubound(a,1),ubound(a,2),ubound(a,3),ubound(a,4),ubound(a,5),ubound(a,6),ubound(a,7))::ax
      logical(8),dimension(ubound(a,1),ubound(a,2),ubound(a,3),ubound(a,4),ubound(a,5),ubound(a,6),ubound(a,7))::axzz
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
     function ba(x1,x2,x3,x4,x5,x6,x7) result(ar)
      integer,dimension(:)::x1,x2,x3,x4,x5,x6,x7
      integer(8),dimension(ubound(x1,1),ubound(x2,1),ubound(x3,1),ubound(x4,1),ubound(x5,1),ubound(x6,1),ubound(x7,1)):: ar
      ar=ri
      if (any(x6/=(/4,5/)))print *,'fail'
     end function
     function bax(x1,x2,x3,x4,x5,x6,x7) result(ar)
     entry    baax(x1,x2,x3,x4,x5,x6,x7) result(ar)
      integer,dimension(:)::x1,x2,x3,x4,x5,x6,x7
      integer(8),dimension(ubound(x1,1),ubound(x2,1),ubound(x3,1),ubound(x4,1),ubound(x5,1),ubound(x6,1),ubound(x7,1)):: ar
      if (any(x6/=(/4,5/)))print *,'fail'
      ar=ri
     end function
 end
 subroutine s1
  integer,parameter,dimension(2)::w2=(/4,5/)
  integer e1(1),e2(1),e3(1),e4(1),e5(1),e7(3)
  iu=11;k3=3
  call ss2(e1,e2,e3,e4,e5,e7);iu=iu+1
  contains
  subroutine ss2(e1,e2,e3,e4,e5,e7)
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax
  integer e1(:),e2(:),e3(:),e4(:),e5(:),e7(:)
  integer(8) bb(1,1,1,1,1,2,3)

  if (any(aa(e1,e2,e3,e4,e5,w2,e7)/=ri))print *,'fail'
  if (any(shape(aa(e1,e2,e3,e4,e5,w2,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(e1,e2,e3,e4,e5,w2,e7)
  if (any(chk(aa(e1,e2,e3,e4,e5,w2,e7),iu)))print *,'fail'
  bb=aa(e1,e2,e3,e4,e5,w2,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(e1,e2,e3,e4,e5,w2,e7)/=ri))print *,'fail'
  if (any(shape(aax(e1,e2,e3,e4,e5,w2,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(e1,e2,e3,e4,e5,w2,e7)
  if (any(chk(aax(e1,e2,e3,e4,e5,w2,e7),iu)))print *,'fail'
  bb=aax(e1,e2,e3,e4,e5,w2,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(e1,e2,e3,e4,e5,w2,e7)/=ri))print *,'fail'
  if (any(shape(aaax(e1,e2,e3,e4,e5,w2,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(e1,e2,e3,e4,e5,w2,e7)
  if (any(chk(aaax(e1,e2,e3,e4,e5,w2,e7),iu)))print *,'fail'
  bb=aaax(e1,e2,e3,e4,e5,w2,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
end
