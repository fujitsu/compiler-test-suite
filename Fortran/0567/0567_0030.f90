Type ty0(k1,k2)
         Integer, kind :: k1,k2
         character(k2,k1) :: arr2(2)
End type


           Type (ty0(4,3)):: obj4
           if(kind(obj4%arr2(1)) .ne. 4 )print*,102,kind(obj4%arr2(1))
           if(len(obj4%arr2(1)) .ne. 3 )print*,103
           if(kind(obj4%arr2(2)) .ne. 4 )print*,104
           if(len(obj4%arr2(2)) .ne. 3 )print*,105
           print*,"PASS"
End

