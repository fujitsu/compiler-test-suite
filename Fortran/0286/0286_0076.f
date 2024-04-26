      common/answer/ans
      real*4 ans(10)
      real*4     a(10),b(10)
      data a/-88.8150253,-88.7850266,-88.7550278,-88.7250290,
     6       -88.6950302,-88.6650314,-88.6350327,-88.6050339,
     6       -88.5750351,-88.5450363/
c
      do 30 i = 1,10
          b(i) = exp(a(i))
   30 continue
c
      do 50 i = 1,10
         if( a(i) .ne. ans(i) ) then
            print *,'NG-1',i
            stop
         endif
         if( abs(b(i)) >= 0.0001 ) then
            print *,'NG-2',i
            stop
         endif
   50 continue
      print *,'PASS'
c
      stop
      end
!
	block data
	common/answer/ans
	real*4 ans(10)
	data ans/ -88.8150253,-88.7850266,-88.7550278,
     6            -88.7250290,-88.6950302,-88.6650314,
     6            -88.6350327,-88.6050339,-88.5750351,
     6            -88.5450363/
	end
