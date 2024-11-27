     integer ::i, j1, j2
   !$OMP DO ordered(2)
      do i=1,10
        do j=1,i+1
          write (6,*) i+j
        enddo
      enddo
   !$OMP END DO
      end
