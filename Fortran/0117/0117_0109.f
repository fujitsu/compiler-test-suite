      integer a(100,100)

      do j=1,100
      do i=1,100
        a(i,j) = i+j
      enddo      
      enddo      

      do 10 i=5,10
         do 20 j=1,10
            a(i,j) = a(i+1,j+1)
            if(a(5,10).gt.0) goto 100
 20      continue
 10   continue
 100  do 1000 i=5,10
         do 2000 j=1,10
            write(6,*) a(i,j)
 2000    continue
 1000 continue
      stop
      end
