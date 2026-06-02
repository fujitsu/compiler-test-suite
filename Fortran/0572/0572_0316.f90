integer::aa(4)
call sub(aa)
contains
subroutine sub(xx)
   integer :: xx(..)
   call sub2(xx)
end subroutine
subroutine sub2(xx)
   integer :: xx(..)
   if(rank(xx)/=1)print*,101
  print*,"PASS"
end subroutine

end
