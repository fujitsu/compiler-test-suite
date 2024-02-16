      real*8 a(2,100),b(2,100),c(2,100),aa(2,100)
      do i=1,100
         a(1,i) = i
         a(2,i) = i
         aa(1,i) = i
         aa(2,i) = i
         b(1,i) = i
         b(2,i) = -i
         c(1,i) = 2
         c(2,i) = 5
      enddo

      do i=100,2,-1
         a(1,i) = a(1,i-1) + b(1,i) * c(1,i)
         a(2,i) = a(2,i-1) + b(2,i) * c(2,i)
      enddo

      do i=100,2,-1
         aa(1,i) = aa(1,i-1) + b(1,i) * c(1,i)
         aa(2,i) = aa(2,i-1) + b(2,i) * c(2,i)
      enddo

      do i=1,100
         do j=1,2
            if (a(j,i) .ne. aa(j,i)) then
               write(6,*) 'ng'
               write(6,1) aa
               write(6,*)
               write(6,1) a
               stop
            endif
         enddo
      enddo
      write(6,*) 'ok'
 1    format(10f8.2)
      end
      
