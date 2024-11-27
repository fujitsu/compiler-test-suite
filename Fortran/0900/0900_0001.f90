module m1
Type ty0(k1,k2)
         Integer, kind :: k1,k2
         character :: arr2(3) = [character(k2,k1)::'A','B','C']
End type
Type ty_2(k1,k2)
         Integer, kind :: k1,k2
          character :: arr(3) = [character(kind=k1,len=k2)::'A','B','C']
End type
Type ty_3(k1,k2)
         Integer, kind :: k1,k2
          character :: arr3(3) = [character(kind=k1+2,len=k2)::'A','B','C']
End type
Type ty_4(k1,k2)
         Integer, kind :: k1,k2
          character :: arr4(3) = [character(k2,k1+2+k1)::'A','B','C']
End type
Type ty_5(k1,k2)
         Integer, kind :: k1,k2
          character(kind=k2) :: arr4(k1) = [character(k2,k1+2+k1)::'A','B','C']
End type


end module m1
use m1
Type ty(k1,k2)
         Integer, kind :: k1,k2
         character :: arr2(3) = [character(k2,k1)::'A','B','C']
End type
Type ty2(k1,k2)
         Integer, kind :: k1,k2
          character :: arr(3) = [character(kind=k1,len=k2)::'A','B','C']
End type
Type ty3(k1,k2)
         Integer, kind :: k1,k2
          character :: arr3(3) = [character(kind=k1+2,len=k2)::'A','B','C']
End type
Type ty4(k1,k2)
         Integer, kind :: k1,k2
          character :: arr4(3) = [character(k2,k1+2+k1)::'A','B','C']
End type

Type ty5(k1,k2)
         Integer, kind :: k1,k2
          character(kind=k2) :: arr4(k1) = [character(k2,k1+2+k1)::'A','B','C']
End type

           Type (ty(3,1)):: obj
           Type (ty2(3,1)):: obj1
           Type (ty3(3,1)):: obj2
           Type (ty4(3,1)):: obj3
           Type (ty5(3,1)):: obj8
           Type (ty0(3,1)):: obj4
           Type (ty_2(3,1)):: obj5
           Type (ty_3(3,1)):: obj6
           Type (ty_4(3,1)):: obj7
           Type (ty_5(3,1)):: obj9
       End

