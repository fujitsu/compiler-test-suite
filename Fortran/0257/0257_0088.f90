Module m1
integer :: ii(5)=[1,2,3,4,5]
integer::k=1
contains
   subroutine s1(d,loc1)
   integer*4 :: loc1
   integer,contiguous :: d(:)
   if(loc(d).ne.loc1)print*,"101"
   if(any(d.ne.[1,2,3,4,5]))print*,"102"
  end subroutine

  subroutine s2
  procedure(s1),pointer :: ptr1
  integer*4::l
  ptr1=>s1
  l=loc(ii)
  call ptr1(ii(1:5:k),l)
  if (any(ii.ne.[1,2,3,4,5]))print*,"121"
  end subroutine

end module

use m1
  integer :: jj(5)=[1,2,3,4,5]
  integer ::l =1
  integer*4 :: l2
  procedure(s1),pointer :: ptr2
  ptr2=>s1
  call s2
  l2=loc(jj)
  call ptr2(jj(1:5:l),l2)
  if(any(jj.ne.[1,2,3,4,5]))print*,"122"
  print*,"Pass"
end
