 Type ty(k1,k2)
         Integer, kind :: k1,k2
          Integer :: arr(1) = [integer(k2)::13]
           End type
            Type (ty(2,4)):: obj

            if(any(obj%arr   .ne. [13]))print*,101
            if(sizeof(obj) .ne. 4 )print*,101
             print *,'pass'
              End

