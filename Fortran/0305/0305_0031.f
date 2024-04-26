      program main
      integer,parameter::N=50
      real(kind=4)::b(N),c(N)

      do i=1,N
         if (mod(i,2) .ne. 0) then
            b(mod(i,3)+1)=real(i)
         else
            c(mod(i,3)+1)=real(i)
         endif
      enddo
      write(6,*) 'b='
      write(6,*) b(1),b(2),b(3)
      write(6,*) 'c='
      write(6,*) c(1),c(2),c(3)
      end program
