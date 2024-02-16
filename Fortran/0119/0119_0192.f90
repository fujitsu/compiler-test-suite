       program main
       real * 8 a(10),b(10),c(10)
       
       do i=1,10
         a(i) = i
         b(i) = i
         c(i) = i
       enddo
       call sub1(a,b,c)
       print *,sum(a)
       call sub2(a,b,c)
       print *,sum(a)
       call sub3(a,b,c)
       print *,sum(a)
       call sub4(a,b,c)
       print *,sum(a)
       stop
       end
       subroutine sub1(a,b,c)
       real * 8 a(10),b(10),c(10)
       integer * 1 i
       do i=1,10
         a(i) = b(i) + c(i)
       enddo
       return
       end
       subroutine sub2(a,b,c)
       real * 8 a(10),b(10),c(10)
       integer * 2 i
       do i=1,10
         a(i) = b(i) + c(i)
       enddo
       return
       end
       subroutine sub3(a,b,c)
       real * 8 a(10),b(10),c(10)
       integer * 4 i
       do i=1,10
         a(i) = b(i) + c(i)
       enddo
       return
       end
       subroutine sub4(a,b,c)
       real * 8 a(10),b(10),c(10)
       integer * 8 i
       do i=1,10
         a(i) = b(i) + c(i)
       enddo
       return
       end


