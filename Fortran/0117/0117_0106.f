      integer a(100,100)
      integer b(100,100)

      do j=1,100
      do i=1,100
        a(i,j) = i+j
        b(i,j) = i+j
      enddo
      enddo

      do 10 i=5,10
         do 20 j=1,10
            a(i,j) = a(i+1,j+2)
            b(i,j) = a(i+3,j+4)*b(i+7,j+8)+a(i+5,j+6)*b(i+9,j+10)
 20      continue
 10   continue
      do 100 i=5,10
         do 200 j=1,10
            write(6,*) a(i,j)
            write(6,*) b(i,j)
 200     continue
 100  continue
      stop
      end
