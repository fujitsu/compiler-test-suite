 call s1
 print *,'pass'
 end
 module mcc
  logical,parameter::t=.true.
  logical,parameter:: ri(2,3)=reshape((/t,t,t,t,t,t/),(/2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    subroutine chki8(a,iu)
      logical(8),dimension(:,:)::a
      logical(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
      if (any(a.neqv.ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax.neqv.ri))print *,'fail'
    end subroutine
 end
 module m1
  use mcc,only:ri
   contains
     function ba(i) result(ar)
      dimension i(:)
      logical(8),dimension(ubound(i,1),ubound(i,1)+1):: ar
      ar=ri
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i) result(ar)
     entry    baax(i) result(ar)
      dimension i(:)
      logical(8),dimension(ubound(i,1),ubound(i,1)+1):: ar
      if (any(i/=(/4,5/)))print *,'fail'
      ar=ri
     end function
 end
 subroutine s1
  integer,parameter,dimension(2)::w2=(/4,5/)
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax
  logical(8) bb(2,3)
  type z
  integer za(2)
  end type
  type(z)::y(k3,4,5)

  iu=11
  y(k3,4,5)%za=w2
  if (any(aa(y(k3,4,k3+2)%za).neqv.ri))print *,'fail'
  if (any(shape(aa(y(k3,4,k3+2)%za))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(y(k3,4,k3+2)%za)
  call chk(aa(y(k3,4,k3+2)%za),iu)
  bb=aa(y(k3,4,k3+2)%za)
  if (any(bb.neqv.ri))print *,'fail'
  iu=iu+1
  if (any(aax(y(k3,4,k3+2)%za).neqv.ri))print *,'fail'
  if (any(shape(aax(y(k3,4,k3+2)%za))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(y(k3,4,k3+2)%za)
  call chk(aax(y(k3,4,k3+2)%za),iu)
  bb=aax(y(k3,4,k3+2)%za)
  if (any(bb.neqv.ri))print *,'fail'
  iu=iu+1
  if (any(aaax(y(k3,4,k3+2)%za).neqv.ri))print *,'fail'
  if (any(shape(aaax(y(k3,4,k3+2)%za))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(y(k3,4,k3+2)%za)
  call chk(aaax(y(k3,4,k3+2)%za),iu)
  bb=aaax(y(k3,4,k3+2)%za)
  if (any(bb.neqv.ri))print *,'fail'
  iu=iu+1
  if (any(aa(zf(char(2))).neqv.ri))print *,'fail'
  if (any(shape(aa(zf(char(2))))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(zf(char(2)))
  call chk(aa(zf(char(2))),iu)
  bb=aa(zf(char(2)))
  if (any(bb.neqv.ri))print *,'fail'
  iu=iu+1
  if (any(aax(zf(char(2))).neqv.ri))print *,'fail'
  if (any(shape(aax(zf(char(2))))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(zf(char(2)))
  call chk(aax(zf(char(2))),iu)
  bb=aax(zf(char(2)))
  if (any(bb.neqv.ri))print *,'fail'
  iu=iu+1
  if (any(aaax(zf(char(2))).neqv.ri))print *,'fail'
  if (any(shape(aaax(zf(char(2))))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(zf(char(2)))
  call chk(aaax(zf(char(2))),iu)
  bb=aaax(zf(char(2)))
  if (any(bb.neqv.ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
