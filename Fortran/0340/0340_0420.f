      call sub1
      call sub2
      end

      subroutine sub1
      real*4  r4a(10),r4b(10)/1,2,3,4,5,6,7,8,9,10/,r4
      real*8  r8a(10),r8b(10),r8

      r4 = 0
      r8 = 0
      do i=1,10
         r8a = i

         r8 = r8 + r8a(i)

         r4 = r4 + r4b(i)
      end do

      write(6,*) r4,r8
      write(6,*) r8a
 1100 continue
      end

      subroutine sub2
      real*4  r4a(10),r4b(10)/1,2,3,4,5,6,7,8,9,10/,r4
      real*8  r8a(10)/1,2,3,4,5,6,7,8,9,10/,r8b(10),r8

      r4 = 0
      r8 = 0
      do i=1,10
         do j=1,10
            r8b(j) = 1
         enddo

         r8 = r8 + r8a(i)
         do j=1,10
            r8b(j) = r8b(j) + 1
         enddo

         r4 = r4 + r4b(i)
      end do

      write(6,*) r4,r8
      write(6,*) r8b
 1100 continue
      end

