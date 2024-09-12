Module m1
contains
   subroutine s1(d)
   integer :: d
   d=d+1
  end subroutine

 function fun( A, B, C )
 INTEGER A, B,C,fun

 ENTRY E1( A, B, C )
 E1=A+B+C
 return
 end function
end
module m2
contains
   subroutine s2(d)
   integer :: d
   d=d+5
  end subroutine
function fun2( A, B, C )
 INTEGER A, B,C,fun

 ENTRY E2( A, B, C )
 E2=A+B-C
 return
 end function

end
module m3
use m2
use m1
 type ty
      procedure(),pointer,nopass :: ptr1=>s1
      procedure(s1),pointer,nopass :: ptr2=>s1
      procedure(s1),pointer,nopass :: ptr3=>s2
      procedure(E1),pointer,nopass:: ptr4=>E1
      procedure(E2),pointer,nopass:: ptr5=>E2
      procedure(),pointer,nopass:: ptr6=>E2
 end type
  type(ty)::obj
end
use m3
  integer::jj =4
  call obj%ptr1(jj)
  call obj%ptr2(jj)
  call obj%ptr3(jj)
  if(jj .ne. 11)print*,"122"
  if(associated(obj%ptr4) .eqv. .false.)print*,"101",associated(obj%ptr4)
  if (obj%ptr4(5,6,7) .ne. 18)print*,"123"
  if(associated(obj%ptr5) .eqv. .false.)print*,"111",associated(obj%ptr5)
  if (obj%ptr5(5,6,7).ne. 4)print*,"113"
  if (obj%ptr6(5,6,7).ne. 4)print*,"113"

  print*,"Pass"
end
