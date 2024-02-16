      real*8 r8(10)/10*2/
      real*4 r4a(10)/10*2/,r4b(10)/10*1/,r4c(10)/10*2/
      n = r8(1)*5

      do i=1,n
         r8(i) = r8(i) + 2
      enddo
      call check1(r8)

      do i=1,n
         r4a(i) = r4a(i) + 2
      enddo
      call check2(r4a)


      do i=1,n,2
         r4a(i) = r4b(i) 
      enddo
      call check2(r4a)

      do i=1,n
         r8(i) = r8(i) + 2
         r4a(i) = r4a(i) + 2
      enddo
      call check1(r8)
      call check2(r4a)

      do i=1,n
         r8(i) = r4a(i) + 2
      enddo
      call check1(r8)

      do i=1,n
         r4a(i) = r8(i) + 2
      enddo
      call check2(r4a)

      do i=1,n
         r4a(i) = r4a(i) / r4b(i)

         r4c(i) = r4c(i) + 3
      enddo
      call check2(r4a)
      call check2(r4c)

      do i=1,n
         r4a(i) = r4a(i) / r4b(i)
      enddo
      call check2(r4a)


      do i=2,n
         r4a(i) = r4a(i) + 2
         r8(i) =r8(i-1) + 2
      enddo
      call check2(r4a)
      call check1(r8)


      do i=2,n
         r4a(i) = r4a(i-1) + 2
         r8(i) =r8(i) + 2
      enddo
      call check2(r4a)
      call check1(r8)


      do i=1,7
         r4a(i) = r4a(i) + 2
      enddo
      call check2(r4a)

      do i=1,7
         r8(i) = r8(i) + 2
         r4a(i) = r4a(i) + 2
      enddo
      call check1(r8)
      call check2(r4a)

      n=1

      do i=1,10
         if (r4c(i) .gt. 4) then
            r4a(n) = r4b(i) + 3
            n = n + 1
         endif
      enddo
      call check2(r4a)
      write(6,*) 'ok'
      end

      subroutine check1(a)
      real*8 a(10)
      end

      subroutine check2(a)
      real*4 a(10)
      end
