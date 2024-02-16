      integer a(2,2)
      do 10 i1=1,2
         do 20 i2=1,2
            do 30 i3=1,2
               do 40 i4=1,2
                  do 50 i5=1,2
                     do 60 i6=1,2
                        do 70 i7=1,2
                           do 80 i8=1,2
                              do 90 i9=1,2
                                 a(i8,i9) = 1
 90                           continue
 80                        continue
 70                     continue
 60                  continue
 50               continue
 40            continue
 30         continue
 20      continue
 10   continue
      do 11 i1=1,2
         do 21 i2=1,2
            do 31 i3=1,2
               do 41 i4=1,2
                  do 51 i5=1,2
                     do 61 i6=1,2
                        do 71 i7=1,2
                           do 81 i8=1,2
                              do 91 i9=1,2
                                 write(6,*) a(i8,i9)
 91                           continue
 81                        continue
 71                     continue
 61                  continue
 51               continue
 41            continue
 31         continue
 21      continue
 11   continue
      stop
      end
