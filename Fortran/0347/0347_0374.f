      dimension a(10,10)
      data a/100*1.0/
      s1=0
      s2=0
      s3=0
      s4=0
      s5=0
      s6=0
      s7=0
      s8=0
      s9=0
      s0=0
      do 10 i=1,10
        s1 = s1 + a(1,i)
        s2 = s2 + a(i,2)
        s3 = s3 + a(3,i)
        s4 = s4 + a(i,4)
        s5 = s5 + a(5,i)
        s6 = s6 + a(i,6)
        s7 = s7 + a(7,i)
        s8 = s8 + a(i,7)
        s9 = s9 + a(9,i)
        s0 = s0 + a(i,10)
  10  continue
      write(6,*) a
      write(6,*) s1,s2,s3,s4,s5,s6,s7,s8,s9,s0
      stop
      end
