module m1
Type ty0(k1,k2)
         Integer, kind :: k1,k2
         integer :: arr2(3) = [integer(k1)::1,2,3]
End type
Type ty_2(k1,k2)
         Integer, kind :: k1,k2
         integer(kind=k1+1) :: arr2(3) = [integer(kind=k1)::k1,k2,3]
End type
Type ty_3(k1,k2)
         Integer, kind :: k1,k2
         integer(kind=k2+k2) :: arr4(k1) = [integer(k2+k1)::k1+2,2,3]
End type



end module m1
use m1
Type ty1(k1,k2)
         Integer, kind :: k1,k2
         integer :: arr2(3) = [integer(k1)::1,2,3]
End type
Type ty2(k1,k2)
         Integer, kind :: k1,k2
         integer(kind=k1+1) :: arr2(3) = [integer(kind=k1)::k1,k2,3]
End type
Type ty3(k1,k2)
         Integer, kind :: k1,k2
         integer(kind=k2+k2) :: arr4(k1) = [integer(k2+k1)::k1+2,2,3]
End type
          Type (ty0(3,1)):: obj4
           Type (ty_2(3,1)):: obj5
           Type (ty_3(3,2)):: obj6
          Type (ty1(3,1)):: obj7
          Type (ty2(3,1)):: obj8
           Type (ty3(3,2)):: obj9
       End

