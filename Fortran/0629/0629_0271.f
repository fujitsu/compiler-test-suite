      integer*4  a(5,5,5),b(5,5,5),c(5,5,5)
      data  a/125*0/
      data  b/125*2/
      data  c/125*3/
      do 10 k=1,5
        do 20 j=1,5
          do 30 i=1,5
            a(i,j,k)=b(i,j,k)+c(i,j,k)
 30       continue
 20     continue
 10   continue
      write(6,*) a
      stop
      end
