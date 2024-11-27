module m2
  contains
  subroutine m2_sub(sub,x)
  call sub(x)
  end subroutine m2_sub
end module m2

module m1
  use m2
  real, private ::a
 contains
   subroutine m1_sub1(x)
   a= 1
   call m2_sub(m1_sub2,x)
   end subroutine m1_sub1

   subroutine m1_sub2(x)
   x=a
   end subroutine m1_sub2
end module m1
use m1
x=0
call m1_sub1(x)
if (abs(x-1)>0.00001)print *,'error'
print *,'pass'
end
