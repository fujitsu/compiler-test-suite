      real aaa(10,10)
      a=1
      o=1
      do 30 i=1,1
         o=o+1
         do 30 j=1,1
            o=o+1
            do 30 k=1,1
               o=o+1
               do 30 l=1,1
                  do 30 m=1,1
                     aaa(l,m) = 1
 30               continue
                  do 300 i=1,1
                     do 300 j=1,1
                        do 300 k=1,1
                           do 300 l=1,1
                              do 300 m=1,1
                                 write(6,'(f11.8)') aaa(l,m)
 300                          continue
                              end
