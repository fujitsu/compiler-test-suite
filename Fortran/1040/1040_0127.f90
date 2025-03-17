      real*8 ,dimension(0:20,0:20)::arr1
      arr1 = 0.0
      arr1(1:20,1:20) = 10
      if (any(arr1(0,:)/=0))write(6,*) "NG"
      print *,'pass'
      end
