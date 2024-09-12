module m1
Type ty_5(k1,k2)
         Integer, kind :: k1,k2
          integer(kind=k2) :: arr4(k1+2) = [integer(k2)::1,2,3]
          integer(kind=k2) :: arr5(k2-1) = [integer(k2+k1+3):: k1,k2,k1+k2]
          integer(kind=k2+k1-1) :: arr6(k1+k2-2) = [integer(kind=k1+1)::1,k2,3]
End type


end module m1
use m1
           Type (ty_5(1,4)):: obj9
           if(any(obj9%arr4 /= [1,2,3]))print*,101
           if(any(obj9%arr5 /= [1,4,5]))print*,102
           if(any(obj9%arr6 /= [1,4,3]))print*,103
           print*,"PASS"
       End

