module m1
Type ty_5(k1,k2)
         Integer, kind :: k1,k2
          character(kind=k2) :: arr4(k1) = [character(k2,k1-2)::'A','B','C']
          character(kind=k2) :: arr5(k1) = [character(kind=k1-2,len=k2)::'A','B','C']
          character(kind=k2) :: arr6(k1) = [character(len=k1)::'A','B','C']
End type


end module m1
use m1
           Type (ty_5(3,1)):: obj9
           if(any(obj9%arr4 /= ['A','B','C']))print*,101
           if(any(obj9%arr5 /= ['A','B','C']))print*,101
           if(any(obj9%arr6 /= ['A','B','C']))print*,101
           print*,"PASS"
       End

