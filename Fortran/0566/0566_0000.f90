 Type ty(k1,k2)
         Integer, kind :: k1,k2
          Integer :: arr(2) = [integer(k1)::13,17]
           End type
            Type (ty(2,8)):: obj
            if(any(obj%arr   .ne. [13,17]))print*,101
            if(sizeof(obj) .ne. 8 )print*,101
             print *,'pass'
              End

