 Type ty(k1,k2)
         Integer, kind :: k1,k2
          Integer :: arr(3) = [integer(k1+k2-4)::13,17,13]
           End type
            Type (ty(4,4)):: obj
            if(any(obj%arr   .ne. [13,17,13]))print*,101
            if(sizeof(obj) .ne. 12 )print*,101
             print *,'pass'

              End

