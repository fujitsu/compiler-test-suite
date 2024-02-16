      integer*4  m(100)
      do 1 i=1, 100
         m(i)=i
    1 continue
      sum=0
      if (sum.ge.5) then
        assign 220 to label4
      else
        assign 210 to label4
      endif
      do 200 i=2, 20, 2
         if (i.eq.8) goto label4(210, 220)
  210 sum=sum+i*2
      goto 200
  220 sum=sum+i*3
  200 continue
      if (sum.eq.220) then
        print *,'ok'
      else
        print *,'ng',sum
      endif
      end
