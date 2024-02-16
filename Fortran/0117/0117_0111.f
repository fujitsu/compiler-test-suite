      integer a(100,100)

      do j=1,100
      do i=1,100
        a(i,j) = i+j
      enddo
      enddo

      do 10 i=5,10
         do 20 j=1,10
            a(2*i,j) = a(i,j)
 20      continue
 10   continue
      do 100 i=5,10
         do 200 j=1,10
            write(6,*) a(2*i,j)
 200     continue
 100  continue
      stop
      end
