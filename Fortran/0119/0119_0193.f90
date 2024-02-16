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
       integer * 4 m
       m = 0
       do i=1,10
         a(m+1) = b(i) + c(i) 
         m = m + 1
       enddo
       return
       end


