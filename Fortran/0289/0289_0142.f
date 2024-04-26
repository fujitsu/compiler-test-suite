      program main
      dimension a(10),sumt(10)
      kount=0
      do 10 i=1,10
         kount=kount+1
         n=i*2
         a(i)=float(n)
   10 continue
      sum=3.1314
      do 20 i=1,10
         kount=kount+1
         sum=sum+float(i)
   20 continue
      do 30 l=1,10
         kount=kount+1
         sumt(l)=a(l)+sum
   30 continue
      addc=0.0
      do 40 k=1,10
          addc=addc+a(k)+sumt(k)
          kount=kount+1
   40 continue
      if((abs(addc-801.31403).le.6.2e-5).and.(kount.eq.40)) then
      write(6,*) '*** ok ***'
      else
      write(6,*) '*** ng ***'
      endif
      stop
      end
