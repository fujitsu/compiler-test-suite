      program main
      integer*4 ier
      integer*4 :: loop=50
      character*8 sa, sb(50), sc(50)
      sa = 'omp_'
      sb = ' '
      sc = ' '
!$omp parallel
!$omp do firstprivate(sa)
      do i=1,loop
          write(sb(i),"(a4,i2.2)") sa, i
      enddo
!$omp end do
!$omp end parallel
      do i=1,loop
          write(sc(i),"(a4,i2.2)") sa, i
      enddo
      ier = 0
      do i=1,loop
          if (sb(i).ne.sc(i)) then
              write(*,*) "i=",i," sb(i)=",sb(i)," sc(i)=",sc(i)
              ier=ier+1
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(sa) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     sb=",sb
         write(*,*) "     sc=",sc
      endif
      stop
      end

