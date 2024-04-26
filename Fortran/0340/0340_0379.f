      call sub1
      call sub2
      call sub3
      end

      subroutine sub1
      real  a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      integer lst(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         a(i) = i

         call suba()
         b(i) = lst(i) + 2

         c(i) = func(i)
      enddo

      do i=1,10
         a(i) = a(i) + 1

         b(i) = b(i) * 2
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      return
      end

      subroutine sub2
      real  a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      integer lst(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         call suba()

         a(i) = i
         c(i) = func(i)

         b(i) = lst(i) + 2
      enddo

      do i=1,10
         a(i) = a(i) + 1

         b(i) = b(i) * 2
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      return
      end

      subroutine sub3
      real  a(10)/10*0/,b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)
      integer lst(10)/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         c(i) = func(i)

         a(i) = i
         b(i) = lst(i) + 2

         call suba()
      enddo

      do i=1,10
         a(i) = a(i) + 1

         b(i) = b(i) * 2
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      return
      end

      real function func(n)
      func = n + 3
      write(6,*) " func "
      return
      end

      subroutine suba()
      write(6,*) " suba "
      end
