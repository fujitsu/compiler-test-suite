      integer*8 a(10),b(10)/10*10000000000_8/
      INTEGER*8 G33(10)/10*8917264583_8/

      do i=1,10
         G33(i)=G33(i)/(21)
      enddo
      write(6,*) G33(1)

      do i=1,10
         a(i) = rshift(b(i), 2)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = ishft(b(i), 2)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = lshift(b(i), 2)
      enddo
      write(6,*) a

      END
