Module m1
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
 end type
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine
   subroutine s11()
    integer::y=1
    call s1(y)
   end 
end module

module m2
use m1,s2=>s1
type ty2
      procedure(),pointer,nopass :: ptr1=>s2
      procedure(s2),pointer,nopass :: ptr2=>s2
 end type
contains
 subroutine s21()
    integer::y=1
    call s2(y)
   end 


end 
module m3
use m2,s3=>s2
end 
use m3
use m2
use m1
  integer::jj =4
  type(ty)::obj
  type(ty2)::obj2
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  call obj2%ptr1(jj)
  call obj2%ptr2(jj)
  call s3(jj)
  call s2(jj)
  call s1(jj)
  call s21()
  call s11()
  if(jj .ne. 11)print*,"122"
  print*,"Pass"
end
