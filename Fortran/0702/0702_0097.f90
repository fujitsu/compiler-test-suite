 call s1
 print *,'pass'
 enD
 module m1
  complex,parameter:: ri(2,3)=reshape((/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)/),(/2,3/))
  integer::k3=3
 end
 subroutine s1
  call ss1
  call ss2
 end
 subroutine ss1
  use m1
  complex(8) bb(2,3)
  integer za(k3,4,5)
  type z
  integer za(2)
  end type
  iu=11
  za(k3,4,k3+1:5)=(/4,5/)
  if (any(ba(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(ba(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)ba(za(3,4,4:k3+2))
  call chk(ba(za(3,4,4:k3+2)),iu)
  bb=ba(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(bax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(bax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)bax(za(3,4,4:k3+2))
  call chk(bax(za(3,4,4:k3+2)),iu)
  bb=bax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(baax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(baax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)baax(za(3,4,4:k3+2))
  call chk(baax(za(3,4,4:k3+2)),iu)
  bb=baax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
   contains
     function ba(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
      ar=ri
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
      if (any(i/=(/4,5/)))print *,'fail'
      ar=ri
     end function
     function baax(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
      if (any(i/=(/4,5/)))print *,'fail'
      ar=ri
     end function
    subroutine chk(a,iu)
      complex(8),dimension(:,:)::a
      complex(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
    end subroutine
  end subroutine
 subroutine ss2
  use m1
  complex(8) bb(2,3)
  integer za(k3,4,5)
  type z
  integer za(2)
  end type
    interface
     function ba(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
     end function
     function bax(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
     end function
     function baax(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
     end function
    subroutine chk(a,iu)
      complex(8),dimension(:,:)::a
      complex(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
    end subroutine
   end interface
  iu=21
  za(k3,4,k3+1:5)=(/4,5/)
  if (any(ba(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(ba(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)ba(za(3,4,4:k3+2))
  call chk(ba(za(3,4,4:k3+2)),iu)
  bb=ba(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(bax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(bax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)bax(za(3,4,4:k3+2))
  call chk(bax(za(3,4,4:k3+2)),iu)
  bb=bax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(baax(za(3,4,4:k3+2))/=ri))print *,'fail'
  if (any(shape(baax(za(3,4,4:k3+2)))/=(/2,3/)))print *,'fail'
  write(iu,*)baax(za(3,4,4:k3+2))
  call chk(baax(za(3,4,4:k3+2)),iu)
  bb=baax(za(3,4,4:k3+2))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
     function ba(i) result(ar)
  use m1
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
      ar=ri
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i) result(ar)
  use m1
     entry    baax(i) result(ar)
      dimension i(:)
      complex(8),dimension(ubound(i,1),3):: ar
      if (any(i/=(/4,5/)))print *,'fail'
      ar=ri
     end function
    subroutine chk(a,iu)
  use m1
      complex(8),dimension(:,:)::a
      complex(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
    end subroutine
