module m1
Type ty0(k1,k2)
         Integer, kind :: k1,k2
         character(3,1) :: arr2(2) = [character(k2,k1)::'Anj','Bkl']
End type
end module m1

use m1
Type ty1(k1,k2)
         Integer, kind :: k1,k2
         character(2,1) :: arr2(2) = [character(k2,kind=k1)::'An','Bk']
End type


           Type (ty0(6,3)):: obj4
           Type (ty1(2,2)):: obj5
if(any(obj4%arr2   .ne. ['Anj','Bkl']))print*,101,obj4%arr2
if(any(obj5%arr2   .ne. ['An','Bk']))print*,102
print*,"PASS"
End

