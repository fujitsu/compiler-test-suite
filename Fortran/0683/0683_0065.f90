      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      real    C(10)/10*0/


      do i = 1,10
        C(i) = A(i)**i
      end do

      if (c(1) .ne. 1.0) then
        print *, 'NG 1'
        stop
      endif
      if (c(10) .ne. 10.**10) then
        print *, 'NG 2', c(10)
        stop
      endif
      print *, 'PASS'
      end

