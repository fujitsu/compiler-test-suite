      integer *4 i4,a4(10)/10*0/,b4(10)/10,9,8,7,6,5,4,3,2,1/
      integer *8 i8,a8(10)/10*0/,b8(10)/10,9,8,7,6,5,4,3,2,1/

      n1 = ifunc(2)
      n2 = ifunc(10)
      n3 = ifunc(1)

      do i4=n1,n2,n3
         b4(i4) = b4(i4-1) + 2
         a4(i4) = b4(i4) + 3
      enddo
      write(6,*) a4

      n1 = ifunc(2)
      n2 = ifunc(10)
      n3 = ifunc(1)
      do i8=n1,n2,n3
         b8(i8) = b8(i8-1) + 2
         a8(i8) = b8(i8) + 3
      enddo
      write(6,*) a8

      n1 = ifunc(10)
      n2 = ifunc(2)
      n3 = ifunc(-1)
      do i4=n1,n2,n3
         b4(i4) = b4(i4-1) + 2
         a4(i4) = b4(i4) + 3
      enddo
      write(6,*) a4

      n1 = ifunc(10)
      n2 = ifunc(2)
      n3 = ifunc(-1)

      do i8=n1,n2,n3
         b8(i8) = b8(i8-1) + 2
         a8(i8) = b8(i8) + 3
      enddo
      write(6,*) a8
      end

      integer function ifunc(mm)
      ifunc = mm
      return
      end
