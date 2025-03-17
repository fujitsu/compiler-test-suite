      real aa,angle,alpha,a(3)
      character(len=4) ch1
      character(len=3) ch2(2)
      equivalence(ch1,ch2(1)(3:))
      equivalence(aa,angle),(alpha,a(1))
      aa=0
      ch2(1)='a'
      ch2(2)='b'
      a(1) = 1
      a(2) = 2
      a(3) = 3
      end
