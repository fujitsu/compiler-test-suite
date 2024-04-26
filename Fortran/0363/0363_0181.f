      program main
      real(8) a(65),b(65),c(65),res(65)
      call init(a,b,c,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo
      do i=1,65
         if(abs(a(i)-res(i)) .gt. 0.0000002 ) then 
         write(6,*) a(i),res(i)
            goto 10
         endif
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(a,b,c,res,n1)
      real(8)  a(n1),b(n1),c(n1),res(n1)

      do i=1,65
        a(i) = 0
        if (i .gt. n1/2) then
           b(i) = i
           c(i) = i
           res(i) = 1.0
        elseif ( i .eq. n1/2) then
           b(i) = -i
           c(i) = -i
           res(i) = 1.0
        else
           b(i) = i
           c(i) = i * 2
           res(i) = 0.5
        endif
      enddo
      end
      
      subroutine test(a,b,c,n1)
      real(8) a(n1),b(n1),c(n1)
      
      do i=1,65
         a(i) = b(i) / c(i)
      enddo
      
      end
