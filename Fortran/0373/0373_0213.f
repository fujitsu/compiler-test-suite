       call si1; call si2; call si4; call si8 
       call sr4; call sr8; call sr16
       end
  
       subroutine si1
       integer*8,dimension(10) :: a
       integer*1,dimension(10) :: c
       data c/10*-1/
       do i=1,10
         a(i)=int(c(i))
       enddo
       write(6,*) a
       end

       subroutine si2
       integer*8,dimension(10) :: a
       integer*2,dimension(10) :: c
       data c/10*-1/
       do i=1,10
         a(i)=int(c(i))
       enddo
       write(6,*) a
       end

       subroutine si4
       integer*8,dimension(10) :: a
       integer*4,dimension(10) :: c
       data c/10*-1/
       do i=1,10
         a(i)=int(c(i))
       enddo
       write(6,*) a
       end

       subroutine si8
       integer*8,dimension(10) :: a
       integer*8,dimension(10) :: c
       data c/10*-1/
       do i=1,10
         a(i)=int(c(i))
       enddo   
       write(6,*) a
       end

       subroutine sr4
       integer*8,dimension(10) :: a
       real*4,dimension(10) :: c
       data c/10*-1.0e0/
       do i=1,10
         a(i)=int(c(i))
       enddo
       write(6,*) a
       end

       subroutine sr8
       integer*8,dimension(10) :: a
       real*8,dimension(10) :: c
       data c/10*-1.0d0/
       do i=1,10
         a(i)=int(c(i))
       enddo
       write(6,*) a
       end

       subroutine sr16
       integer*8,dimension(10) :: a
       real*16,dimension(10) :: c
       data c/10*-1.0q0/
       do i=1,10
         a(i)=int(c(i))
       enddo
       write(6,*) a
       end
