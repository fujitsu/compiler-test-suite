      program main
      integer*4 ia, ier
      integer*4 :: loop=50, loop5=5
      character*4 sa(5), sb(50), sc(50), sd(5)
      sa = ' '
      sb = ' '
      sc = ' '
      sd = ' '
!$omp parallel
!$omp do lastprivate(sa) private(ia)
      do i=1,loop
         ia=mod(i,loop5)+1
         write(sa(ia),"(i3.3)") i
         sb(i)=sa(ia)
      enddo
!$omp end do
!$omp end parallel
      do i=1,loop
         ia=mod(i,loop5)+1
         write(sd(ia),"(i3.3)") i
         sc(i)=sd(ia)
      enddo
      ier = 0
      do i=1,loop
          if (sb(i).ne.sc(i)) then
              write(*,*) "i=",i," sb(i)=",sb(i)," sc(i)=",sc(i)
              ier=ier+1
          endif
      enddo
      do i=1,loop5
          if (sa(i).ne.sd(i)) then
              write(*,*) "i=",i," sa(i)=",sa(i)," sd(i)=",sd(i)
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
         write(*,*) "     sa=",sa,"  sd=",sd
         write(*,*) "     sb=",sb
         write(*,*) "     sc=",sc
      endif
      stop
      end

