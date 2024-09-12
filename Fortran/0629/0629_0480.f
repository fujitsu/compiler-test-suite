      integer *1 i1,a1(10)/10*0/,b1(10)/10,9,8,7,6,5,4,3,2,1/
      integer *2 i2,a2(10)/10*0/,b2(10)/10,9,8,7,6,5,4,3,2,1/
      integer *4 i4,a4(10)/10*0/,b4(10)/10,9,8,7,6,5,4,3,2,1/
      integer *8 i8,a8(10)/10*0/,b8(10)/10,9,8,7,6,5,4,3,2,1/

      do i=2,10,2
         b1(i) = b1(i-1) + 2
         a1(i) = b1(i) + 3
      enddo
      write(6,*) a1

      do i=2,10,3
         b2(i) = b2(i-1) + 2
         a2(i) = b2(i) + 3
      enddo
      write(6,*) a2

      do i=2,10,2
         b4(i) = b4(i-1) + 2
         a4(i) = b4(i) + 3
      enddo
      write(6,*) a4

      do i=2,10,3
         b8(i) = b8(i-1) + 2
         a8(i) = b8(i) + 3
      enddo
      write(6,*) a8
      end
