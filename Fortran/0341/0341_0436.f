      real a(10,10),b(10,10)
      a = 1
      b = 1
      do 20 i=1,10
         if(i.eq.10) goto 21
         do 20 j=1,10
            do 20 k=1,10
               b(i,j) = i
 20         continue
 21         continue
            do 10 i=1,10
               if(i.eq.10) goto 11
               do 10 j=1,10
                  do 10 k=1,10
                     a(i,j) = i
 10               continue
 11               continue
                  do 200 i=1,10
                     do 200 j=1,10
                        do 200 k=1,10
                           write(6,'(f11.8)') b(i,j)
 200                    continue
                        do 100 i=1,10
                           do 100 j=1,10
                              do 100 k=1,10
                                 write(6,'(f11.8)') a(i,j)
 100                          continue
                              end
