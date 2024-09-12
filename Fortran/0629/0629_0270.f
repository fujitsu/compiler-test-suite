      real * 4 a(10,10),b(10,10),c(10,10)
      a=0
      b=2
      c=3
!$OMP parallel do 
      do i=1,10 
      do j=1,10 
        a(j,i) = b(j,i)+c(j,i)
      enddo
      enddo
!$OMP endparalleldo
      write(6,*) a
      stop
      end
