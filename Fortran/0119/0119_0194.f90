       program main
       real * 8 a(10),b(10),c(10)
       do i=1,10
         a(i) = i
         b(i) = i
         c(i) = i
       enddo
       call sub(a,b,c)
       print *,sum(a)
       stop
       end
       subroutine sub(a,b,c)
       real * 8 a(10),b(10),c(10)
       do i=10,1,-1
         a(i) = b(i) + c(i) 
       enddo
       return
       end


