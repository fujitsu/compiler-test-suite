 call s1
 print *,'pass'
 end
 module mcc
  integer,parameter:: ri(2,3)=reshape((/1,2,3,4,5,6/),(/2,3/))
  contains
    function   chk(a,iu) result(ar)
      integer(8),dimension(:,:)::a
      integer(8),dimension(ubound(a,1),ubound(a,2))::ax
      logical(8),dimension(a(2,1),a(1,2))::ar
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
      ar=.false.
    end function  
 end
 module m1
  use mcc,only:ri
   contains
     function ba(i) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      ar=ri
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i) result(ar)
     entry    baax(i) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      if (any(i/=(/4,5/)))print *,'fail'
      ar=ri
     end function
 end
 subroutine s1
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax
  integer(8) bb(2,3)
  integer za(k3,4,5)

  za(k3,4,k3+1:5)=(/4,5/)
  if (any(aa(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(aa(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(za(3,4,4:k3+2))
  if (any(chk(aa(za(3,4,4:k3+2)),iu)))print *,'fail'
  bb=aa(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(aax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(za(3,4,4:k3+2))
  if (any(chk(aax(za(3,4,4:k3+2)),iu)))print *,'fail'
  bb=aax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(aaax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(za(3,4,4:k3+2))
  if (any(chk(aaax(za(3,4,4:k3+2)),iu)))print *,'fail'
  bb=aaax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
