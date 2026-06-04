 call s1
 print *,'pass'
 end
 module mcc
  complex,parameter:: ri(2,3)=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    subroutine chki8(a,iu)
      complex(8),dimension(:,:)::a
      complex(8),dimension(ubound(a,1),ubound(a,2))::ax
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
     function ba(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
      ar=ri
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i) result(ar)
     entry    baax(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
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
  complex(8) bb(2,3)
  integer za(k3,4,5)
  type z
  integer za(2)
  end type
  type(z)::y(k3,4,5)

  za(k3,4,k3+1:5)=(/4,5/)
  if (any(aa(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(aa(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(za(3,4,4:k3+2))
  call chk(aa(za(3,4,4:k3+2)),iu)
  bb=aa(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(aax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(za(3,4,4:k3+2))
  call chk(aax(za(3,4,4:k3+2)),iu)
  bb=aax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(aaax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(za(3,4,4:k3+2))
  call chk(aaax(za(3,4,4:k3+2)),iu)
  bb=aaax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  y(k3,4,5)%za=w2
  if (any(aa(y(k3,4,k3+2)%za)/=ri))print *,'fail'
  if (any(shape(aa(y(k3,4,k3+2)%za))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(y(k3,4,k3+2)%za)
  call chk(aa(y(k3,4,k3+2)%za),iu)
  bb=aa(y(k3,4,k3+2)%za)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(y(k3,4,k3+2)%za)/=ri))print *,'fail'
  if (any(shape(aax(y(k3,4,k3+2)%za))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(y(k3,4,k3+2)%za)
  call chk(aax(y(k3,4,k3+2)%za),iu)
  bb=aax(y(k3,4,k3+2)%za)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(y(k3,4,k3+2)%za)/=ri))print *,'fail'
  if (any(shape(aaax(y(k3,4,k3+2)%za))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(y(k3,4,k3+2)%za)
  call chk(aaax(y(k3,4,k3+2)%za),iu)
  bb=aaax(y(k3,4,k3+2)%za)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
end
