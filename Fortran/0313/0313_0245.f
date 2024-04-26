      real*4 a(20)/20*2/
      real*4 res
      logical NG/.FALSE./
      res = 1/sqrt(2.)
      do i=1,20
         a(i) = 1/sqrt(a(i))
      enddo
      do i=1,20
        if (abs(a(i)-res) > 0.000002) then
           NG = .TRUE.
           write(6,*) a(i),res
        endif
      enddo
      if (NG) print *,"NG"
      print *,"OK"
      end
