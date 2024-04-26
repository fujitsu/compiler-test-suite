      integer a(10),b(10)

      do i=1,10
         write(6,*) i

         write(6,*) '  ',i
      enddo

      rewind(5)
      do i=1,10
         read(5,*) a(i)

         read(5,*) b(i)
      enddo

      write(6,*) a
      write(6,*) b
      write(6,*) 

      rewind(5)
      do i=1,10
         a(i) = a(i) + 1

         read(5,*) a(i)

         a(i) = a(i) + 1
      enddo
      write(6,*) a

      rewind(5)
      do i=1,10
         read(5,*) a(i)

         a(i) = a(i) + 1

         a(i) = a(i) + 1
      enddo
      write(6,*) a

      call sub1()
      END                      

      subroutine sub1()
      integer a(10),b(10)
      a = 0

      do i=1,10
         write(6,*) i

         write(6,*) '  ',i
      enddo

      rewind(5)
      do i=1,10
         read(5,*) a(i)

         read(5,*) b(i)
      enddo

      write(6,*) a
      write(6,*) b
      write(6,*) 

      rewind(5)
      do i=1,10
         a(i) = a(i) + 1

         read(5,*) a(i)

         a(i) = a(i) + 1
      enddo
      write(6,*) a

      rewind(5)
      do i=1,10
         read(5,*) a(i)

         a(i) = a(i) + 1

         a(i) = a(i) + 1
      enddo
      write(6,*) a
      end
