      call sub1
      call sub2
      call sub3
      end

      subroutine sub1
      real  a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      integer lst(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         a(i) = i

         write(6,*) lst(i)

         c(i) = i
         write(6,*) b(i)
      enddo
      do i=1,10
         a(i) = a(i) + 1

         c(i) = c(i) * 2
      enddo
      write(6,*) a
      write(6,*) c
      return
      end

      subroutine sub2
      real  a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      integer lst(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         write(6,*) lst(i)

         write(6,*) b(i)
         a(i) = i

         c(i) = i
      enddo
      do i=1,10
         a(i) = a(i) + 1

         c(i) = c(i) * 2
      enddo
      write(6,*) a
      write(6,*) c
      return
      end

      subroutine sub3
      real  a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      integer lst(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         write(6,*) lst(i)

         a(i) = i

         c(i) = i

         write(6,*) b(i)
      enddo
      do i=1,10
         a(i) = a(i) + 1

         c(i) = c(i) * 2
      enddo
      write(6,*) a
      write(6,*) c
      return
      end

