module m1
Type ty0(k1,k2)
         Integer, kind :: k1,k2
         character :: arr2(3) = [character(k2,k1)::'A','B','C']
End type

Type ty1(k1,k2)
         Integer, kind :: k1,k2
         character :: arr2(3) = [character(2,1)::'A','B','C']
End type

           Type (ty0(1,1)):: obj4
           Type (ty1(2,1)):: obj5

end module m1
use m1,only:aa=>obj5
use m1

if(any(aa%arr2   .ne. ['A','B','C']))print*,101
if(any(obj4%arr2   .ne. ['A','B','C']))print*,102
print*,"PASS"
End

