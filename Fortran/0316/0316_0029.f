      module c
      integer ::com01=1 ; end
      module c2
      integer ::com02=1 ; end
      module c23
      integer ::com03=1 ; end
      module c234
      integer ::com04=1 ; end
      module c2345
      integer ::com05=1 ; end
      module c23456
      integer ::com06=1 ; end
      module c234567
      integer ::com07=1 ; end
      module c2345678
      integer ::com08=1 ; end
      module c23456789
      integer ::com09=1 ; end
      module c234567890
      integer ::com10=1 ; end
      module c2345678901
      integer ::com11=1 ; end
      module c23456789012
      integer ::com12=1 ; end
      module c234567890123
      integer ::com13=1 ; end
      module c2345678901234
      integer ::com14=1 ; end
      module c23456789012345
      integer ::com15=1 ; end
      module c234567890123456
      integer ::com16=1 ; end
      module c2345678901234567
      integer ::com17=1 ; end
      module c23456789012345678
      integer ::com18=1 ; end
      module c234567890123456789
      integer ::com19=1 ; end
      module c2345678901234567890
      integer ::com20=1 ; end
      module c23456789012345678901
      integer ::com21=1 ; end
      module c234567890123456789012
      integer ::com22=1 ; end
      module c2345678901234567890123
      integer ::com23=1 ; end 
      module c23456789012345678901234
      integer ::com24=1 ; end 
      module c234567890123456789012345
      integer ::com25=1 ; end 
      module c2345678901234567890123456
      integer ::com26=1 ; end 
      module c23456789012345678901234567
      integer ::com27=1 ; end 
      module c234567890123456789012345678
      integer ::com28=1 ; end 
      module c2345678901234567890123456789
      integer ::com29=1 ; end 
      module c23456789012345678901234567890
      integer ::com30=1 ; end 
      module c234567890123456789012345678901
      integer ::com31=1 ; end 

      use c
      use c2
      use c23
      use c234
      use c2345
      use c23456
      use c234567
      use c2345678
      use c23456789
      use c234567890
      use c2345678901
      use c23456789012
      use c234567890123
      use c2345678901234
      use c23456789012345
      use c234567890123456
      use c2345678901234567
      use c23456789012345678
      use c234567890123456789
      use c2345678901234567890
      use c23456789012345678901
      use c234567890123456789012
      use c2345678901234567890123
      use c23456789012345678901234
      use c234567890123456789012345
      use c2345678901234567890123456
      use c23456789012345678901234567
      use c234567890123456789012345678
      use c2345678901234567890123456789
      use c23456789012345678901234567890
      use c234567890123456789012345678901
      if (1.ne.com01) goto 10
      if (1.ne.com02) goto 10
      if (1.ne.com03) goto 10
      if (1.ne.com04) goto 10
      if (1.ne.com05) goto 10
      if (1.ne.com06) goto 10
      if (1.ne.com07) goto 10
      if (1.ne.com08) goto 10
      if (1.ne.com09) goto 10
      if (1.ne.com10) goto 10
      if (1.ne.com11) goto 10
      if (1.ne.com12) goto 10
      if (1.ne.com13) goto 10
      if (1.ne.com14) goto 10
      if (1.ne.com15) goto 10
      if (1.ne.com16) goto 10
      if (1.ne.com17) goto 10
      if (1.ne.com18) goto 10
      if (1.ne.com19) goto 10
      if (1.ne.com20) goto 10
      if (1.ne.com21) goto 10
      if (1.ne.com22) goto 10
      if (1.ne.com23) goto 10
      if (1.ne.com24) goto 10
      if (1.ne.com25) goto 10
      if (1.ne.com26) goto 10
      if (1.ne.com27) goto 10
      if (1.ne.com28) goto 10
      if (1.ne.com29) goto 10
      if (1.ne.com30) goto 10
      if (1.ne.com31) goto 10
      print *,'*** ok ***'
      stop
  10  print *,'??? ng ??'
      end

