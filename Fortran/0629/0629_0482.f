      integer *1 i1,a1(10)/10*0/,b1(10)/10,9,8,7,6,5,4,3,2,1/
      integer *2 i2,a2(10)/10*0/,b2(10)/10,9,8,7,6,5,4,3,2,1/
      integer *4 i4,a4(10)/10*0/,b4(10)/10,9,8,7,6,5,4,3,2,1/
      integer *8 i8,a8(10)/10*0/,b8(10)/10,9,8,7,6,5,4,3,2,1/

      call sub1(a1,a2,a4,a8,b1,b2,b4,b8)

      call sub2(a1,a2,a4,a8,b1,b2,b4,b8)
      write(6,*) a1
      write(6,*) a2
      write(6,*) a4
      write(6,*) a8
      end

      subroutine sub1(a1,a2,a4,a8,b1,b2,b4,b8)

      integer *1 i1,a1(10),b1(10)
      integer *2 i2,a2(10),b2(10)
      integer *4 i4,a4(10),b4(10)
      integer *8 i8,a8(10),b8(10)

      do i1=2,10
         b1(i1) = b1(i1-1) + 2
         a1(i1) = b1(i1) + 3
      enddo
      write(6,*) a1

      do i2=2,10
         b1(i2) = b1(i2-1) + 2
         a1(i2) = b1(i2) + 3
      enddo
      write(6,*) a2

      do i4=2,10
         b1(i4) = b1(i4-1) + 2
         a1(i4) = b1(i4) + 3
      enddo
      write(6,*) a4

      do i8=2,10
         b1(i8) = b1(i8-1) + 2
         a1(i8) = b1(i8) + 3
      enddo
      write(6,*) a8
      return
      end

      subroutine sub2(a1,a2,a4,a8,b1,b2,b4,b8)

      integer *1 i1,a1(10),b1(10)
      integer *2 i2,a2(10),b2(10)
      integer *4 i4,a4(10),b4(10)
      integer *8 i8,a8(10),b8(10)

      do i1=2,10
         b1(i1) = b1(i1-1) + 2
         a1(i1) = b1(i1) + 3
      enddo

      do i1=2,10
         b2(i1) = b2(i1-1) + 2
         a2(i1) = b2(i1) + 3
      enddo

      do i1=2,10
         b4(i1) = b4(i1-1) + 2
         a4(i1) = b4(i1) + 3
      enddo

      do i1=2,10
         b8(i1) = b8(i1-1) + 2
         a8(i1) = b8(i1) + 3
      enddo
      return
      end
