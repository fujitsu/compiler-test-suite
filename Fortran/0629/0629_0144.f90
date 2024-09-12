        integer * 4 b(2)
        data b/10,10/
        call sub(b)
        stop
        end
        subroutine sub(b)
        integer * 4 b(2)
       integer * 8 a(10,10)
       a=1
       write(6,*) a
       do i=1, b(1)
       do j=1,b(2) 
         a(i,j) = a(i,j)+1
       enddo
       enddo
       write(6,*) a 
       return 
       end
