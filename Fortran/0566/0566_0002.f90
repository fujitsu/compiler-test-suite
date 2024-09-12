module m1
Type ty_5(k1,k2)
         integer, kind :: k1,k2
          complex(kind=k2) :: arr4(k1+2) = [complex(k2)::1,2,3]
         complex(kind=k2) :: arr5(k2-1) = [complex(k2+k1+3):: k1,k2,k1+k2]
          complex(kind=k2+k1-1) :: arr6(k1+k2-2) = [complex(kind=k1+7)::1,k2,3]
End type


end module m1
use m1
           Type (ty_5(1,4)):: obj9
           if(any(obj9%arr4 /= [1,2,3]))print*,101
           if(any(obj9%arr5 /= [1,4,5]))print*,101
           if(any(obj9%arr6 /= [1,4,3]))print*,101
           print*,"PASS"
       End

