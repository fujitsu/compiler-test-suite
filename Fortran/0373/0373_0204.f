       call sub1; call sub2
       end

       subroutine sub1
       integer*4 a(10),b(10),c(10,10)
       data a/10*-1/,b/10*-1/
       do i=1,10
       do j=1,10
         c(i,j)=a(i)+b(j)
       end do
       enddo
       write(6,*) c
       end subroutine sub1

       subroutine sub2
       integer*4 a(10),b(10),c(10,10)
       data c/100*1/,b/10*0/
       do i=1,10
         a(i)=i
       do j=1,10
         c(i,j)=a(i)+b(j)
       end do
         b(i)=i
       enddo
       write(6,*) c
       end subroutine sub2
