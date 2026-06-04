module m1
 use,intrinsic :: iso_c_binding
 implicit none

 type,bind(c) :: btype_1
  integer(C_INT) :: i,j,k
  integer(C_FLOAT):: s
 end type

 type(btype_1),bind(c) :: ty_01
end module

 use m1
 ty_01%i =1
 ty_01%j =2
 ty_01%k =3
 ty_01%s =1.0

 if(ty_01%i /= 1) print *,'fail'
 if(ty_01%j /= 2) print *,'fail'
 if(ty_01%k /= 3) print *,'fail'
 if(ty_01%s /= 1.0) print *,'fail'
 
print *,'pass'
end
