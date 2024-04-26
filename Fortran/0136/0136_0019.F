C234567
      integer(8)::a
      a=100000000**0+100000000**0+100000000**0+100000000**0+100000000**0+1
     !00000000**0
     !-100000000
C    ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
C111
      if(a/=4) print *,'err'
      print *,'pass'
      end
