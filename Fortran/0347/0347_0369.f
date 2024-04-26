      real*8    a(10)/1,2,3,4,5,6,7,8,9,0/
      s=1.5
      t=-3.5
      do 1 i=1,10
       t=t+a(i)
   1   s=s+a(i)*s
      write(6,*) s,t
      end
