Module m1
integer :: ii=8
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine

  subroutine s2
  procedure(s1),pointer :: ptr1=>s1
  ptr1=>s1
  call ptr1(ii)
  if (ii .ne. 9)print*,"121"
  end subroutine

end module

use m1
  integer :: jj=4
  procedure(s1),pointer :: ptr2=>s1
  ptr2=>s1
  call s2
  call ptr2(jj)
  if(jj .ne. 5)print*,"122"
  print*,"Pass"
end
