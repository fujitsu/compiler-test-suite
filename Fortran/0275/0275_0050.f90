     integer :: a
     a = 1
     associate(x => a,y=>a)
       !$omp parallel private(a)
         a = 2
         if(x .ne. 1) print*,"121"
         if(y .ne. 1) print*,"122"
         if(a .ne. 2) print*,"123"
       !$omp end parallel

       !$omp parallel
         !$omp critical
           a = 3
         !$omp end critical
         if(x .ne. 3) print*,"221"
        if(y .ne. 3) print*,"222"
         if(a .ne. 3) print*,"223"
       !$omp end parallel
     end associate
           print*,"pass"
      end


