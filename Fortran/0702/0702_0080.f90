 call s1
 print *,'pass'
 end
 module mcc
  character,parameter:: ri(2,3)=reshape((/'1','2','3','4','5','6'/),(/2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    subroutine chki8(a,iu)
      character,dimension(:,:)::a
      character,dimension(ubound(a,1),ubound(a,2))::ax
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
     function aa() result(ar)
      character,dimension(2,3):: ar
      ar=ri
     end function
     function aax() result(ar)
     entry    aaax() result(ar)
      character,dimension(2,3):: ar
      ar=ri
     end function
     function ba(i) result(ar)
      character,dimension(i,3):: ar
      ar=ri
     end function
     function bax(i) result(ar)
     entry    baax(i) result(ar)
      character,dimension(i,3):: ar
      ar=ri
     end function
 end
 subroutine s1
  iu=11;k3=3
  do jj=11,35
     open(jj,delim='quote')
  end do
  call ss1;iu=iu+1
  call ss2;iu=iu+1
  contains
  subroutine ss1
  use mcc,only:ri,chk
  use m1,only:aa=>aa,aax=>aax,aaax=>aaax
  character bb(2,3)
  if (any(aa()/=ri))print *,'fail'
  if (any(shape(aa())/=(/2,3/)))print *,'fail'
  write(iu,*)aa()
  call chk(aa(),iu)
  bb=aa()
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax()/=ri))print *,'fail'
  if (any(shape(aax())/=(/2,3/)))print *,'fail'
  write(iu,*)aax()
  call chk(aax(),iu)
  bb=aax()
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax()/=ri))print *,'fail'
  if (any(shape(aaax())/=(/2,3/)))print *,'fail'
  write(iu,*)aaax()
  call chk(aaax(),iu)
  bb=aaax()
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax
  character bb(2,3)
  integerza(k3,4,5)
  type z
  integer   za
  end type

  if (any(aa(2)/=ri))print *,'fail'
  if (any(shape(aa(2))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(2)
  call chk(aa(2),iu)
  bb=aa(2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(2)/=ri))print *,'fail'
  if (any(shape(aax(2))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(2)
  call chk(aax(2),iu)
  bb=aax(2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(2)/=ri))print *,'fail'
  if (any(shape(aaax(2))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(2)
  call chk(aaax(2),iu)
  bb=aaax(2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  za(k3,4,5)=2
  if (any(aa(za(3,4,k3+2))/=ri))print *,'fail'
  if (any(shape(aa(za(3,4,k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(za(3,4,k3+2))
  call chk(aa(za(3,4,k3+2)),iu)
  bb=aa(za(3,4,k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(za(3,4,k3+2))/=ri))print *,'fail'
  if (any(shape(aax(za(3,4,k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(za(3,4,k3+2))
  call chk(aax(za(3,4,k3+2)),iu)
  bb=aax(za(3,4,k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(za(3,4,k3+2))/=ri))print *,'fail'
  if (any(shape(aaax(za(3,4,k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(za(3,4,k3+2))
  call chk(aaax(za(3,4,k3+2)),iu)
  bb=aaax(za(3,4,k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
end
