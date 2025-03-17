      program main
      integer*4 ia(50), ib(50), ier
      integer*4 :: loop=50
      ia = 0
      ib = 0
      do i=1,loop
         if(mod(i,3).ne.0) ia(i)=i
      enddo
!$omp parallel
      where ( ia==0 )
         ib = 9
      end where
!$omp end parallel
      ier=0
      do i=1,loop
         if(ia(i).eq.i)then
            if(ib(i).ne.0) ier=ier+1
         elseif(ia(i).eq.0)then
            if(ib(i).ne.9) ier=ier+1
         else
            ier=ier+1
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel (where) -----"
      if(ier .eq. 0) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL Directive is not active!"
         write(*,*) "      ia=", ia
         write(*,*) "      ib=", ib
         write(*,*) "      ier=", ier
      endif
      stop
      end

