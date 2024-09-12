       call sub1; call sub2
       end

       subroutine sub1
       integer*8,dimension(10) :: a
       integer*4,dimension(10) :: c
       data c/10*-1/
       do i=1,10
         a(i)=c(i)
       enddo
       write(6,*) a
       end subroutine sub1

       subroutine sub2
       integer*8,dimension(10) :: a
       integer*4,dimension(10) :: c,d
       data c/10*-1/,d/10*-1/
       do i=1,10
         a(i)=c(i)+d(i)
       enddo
       write(6,*) a
       end subroutine sub2
