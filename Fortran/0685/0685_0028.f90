      call sub()
      print *,'pass'
      end

      subroutine sub()
      common /com/ kk,ij
!$omp parallel private(/com/)
      kk = 0
      assign 100 to ij 
      goto 10
  100 continue
      assign 200 to ij 
      kk = kk + 1
      goto 10
  200 continue
      assign 300 to ij 
      kk = kk + 1
      goto 10
  300 continue
      assign 400 to ij 
      kk = kk + 1
      goto 10
  400 continue
      assign 500 to ij 
      kk = kk + 1
      goto 10
  500 continue
      assign 600 to ij 
      kk = kk + 1
      goto 10
  600 continue
      assign 700 to ij 
      kk = kk + 1
      goto 10
  700 continue
      assign 800 to ij 
      kk = kk + 1
      goto 10
  800 continue
      assign 900 to ij 
      kk = kk + 1
      goto 10
  900 continue
      assign 1000 to ij 
      kk = kk + 1
      goto 10
   10 continue
      goto ij (100,200,300,400,500,600,700,800,900,1000)
 1000 continue
      if (kk/=9) print *,"fail"
!$omp end parallel
      end
