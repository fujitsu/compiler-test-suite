module mod
  integer,pointer,dimension(:)::m_ptr1,m_ptr2
end module
subroutine test1
use mod
integer,pointer,dimension(:):: ans2
integer                     ans1
interface
  pure subroutine update_1(i)
  intent(inout)::i
  end subroutine
end interface
  allocate(m_ptr1(5))
  allocate(m_ptr2(5))
  allocate(  ans2(5))
  ans1=2
  m_ptr1(3)=1
  m_ptr2(3)=2
  call update_1(ans1)
  ans2(3)=m_ptr1(3)+m_ptr2(3)
  if ( ans1.ne.5 .or. ans2(3).ne.3 ) then;  print *,"NG"
                                     else;  print *,"OK"; endif
  return
end
program main
  print *,'test start'
  call test1
  print *,'test end'
end
pure subroutine update_1(i)
  use mod
  intent(inout)::i
  i=m_ptr1(3)+m_ptr2(3)+i
  return
end


