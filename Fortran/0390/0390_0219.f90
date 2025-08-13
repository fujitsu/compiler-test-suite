module m_rerank
implicit none
public :: foo
contains

  function foo(i1) result(i3)
    implicit none
    real(8),dimension(:),target:: i1
    real(8),pointer,dimension(:,:):: i3

    write(59,'(a ,x,z16.16)') 'foo ',loc(i1)

    i3 => boo(10,10,i1)

  end function foo

  function boo(l1,l2,i1) result(i3)
    implicit none
    integer(4),intent(in) :: l1,l2
    real(8),dimension(l1,l2),target:: i1
    real(8),pointer,dimension(:,:):: i3

    write(59,'(a ,x,z16.16)') 'boo ',loc(i1)

    i3 => i1
  end function boo
end module m_rerank

program main
  use m_rerank,only : foo
  implicit none
  real(8),pointer,dimension(:) :: ipnt
  real(8),pointer,dimension(:,:) :: rpnt

  allocate(ipnt(100))
    write(59,'(a ,x,z16.16)') 'ipnt',loc(ipnt)
  rpnt => foo(ipnt)
    write(59,'(a ,x,z16.16)') 'rpnt',loc(rpnt)
  deallocate(ipnt)
call chk
print *,'pass'

end program main
subroutine chk
character(100) r1,r2
rewind 59
read(59,'(a)') r1
read(59,'(a)') r2
if (r1(6:)/=r2(6:)) print *,101
read(59,'(a)') r2
if (r1(6:)/=r2(6:)) print *,101
read(59,'(a)') r2
if (r1(6:)/=r2(6:)) print *,101
end
