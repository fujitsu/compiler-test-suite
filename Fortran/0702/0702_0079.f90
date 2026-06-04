 call s1
 print *,'pass'
 end
 module mcc
  integer,parameter:: ri(2,3)=reshape((/1,2,3,4,5,6/),(/2,3/))
  contains
    function   chk(a,iu) result(ar)
      integer(1),dimension(:,:)::a
      integer(1),dimension(ubound(a,1),ubound(a,2))::ax
      logical(8),dimension(a(a(2,1),a(1,1)),a(2,1))::ar
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
      integer(1),dimension(i(1)-2,i(2)-2)::ar
      ar=ri
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i) result(ar)
     entry    baax(i) result(ar)
      dimension i(:)
      integer(1),dimension(i(1)-2,i(2)-2)::ar
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
  integer(1) bb(2,3)

  if (any(aa(w2)/=ri))print *,'fail'
  if (any(shape(aa(w2))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(w2)
  if (any(chk(aa(w2),iu)))print *,'fail'
  bb=aa(w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(w2)/=ri))print *,'fail'
  if (any(shape(aax(w2))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(w2)
  if (any(chk(aax(w2),iu)))print *,'fail'
  bb=aax(w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(w2)/=ri))print *,'fail'
  if (any(shape(aaax(w2))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(w2)
  if (any(chk(aaax(w2),iu)))print *,'fail'
  bb=aaax(w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
end
