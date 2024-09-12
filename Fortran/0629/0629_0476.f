      integer a(10,10),b(10),s
      do i=1,10
         do j=1,10
            a(i,j) = i+j
         enddo
         b(i) = -i
      enddo

      do i=1,10
         s = b(i)
         do j=1,10
            a(i,j) = a(i,j) + s 
         enddo
      enddo
      write(6,*) a

      do i=9,2,-2
         s = b(i)
         do j=9,2,-1
            a(i,j) = a(i,j) + s 
         enddo
      enddo
      write(6,*) a

      n1 = ifunc(1)
      n2 = ifunc(10)
      n3 = ifunc(1)
      n4 = ifunc(1)
      n5 = ifunc(10)
      n6 = ifunc(1)

      do i=n1,n2,n3
         s = b(i)
         do j=n4,n5,n6
            a(i,j) = a(i,j) + s 
         enddo
      enddo
      write(6,*) a

      n1 = ifunc(9)
      n2 = ifunc(2)
      n3 = ifunc(-1)
      n4 = ifunc(9)
      n5 = ifunc(2)
      n6 = ifunc(-2)

      do i=n1,n2,n3
         s = b(i)
         do j=n1,n2,n3
            a(i,j) = a(i,j) + s 
         enddo
      enddo
      write(6,*) a
      end

      integer function ifunc(nnn)
      ifunc = nnn
      return
      end
