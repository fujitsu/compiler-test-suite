      program main
      real ra(10),rb(10),rc(10)
      data ra/10*1.23456/,rb/10*0./,m/1/,rc/10*1./
      s = 0.
      do 1 j=1,m
       do 10 i=1,10
         s = s + ra(1)*rc(1)
  10   continue
       do 20 i=1,10
         rb(i) = rb(i) + ra(i)
  20   continue
   1  continue
      write(6,*) rb
      write(6,*) s
      do 2 j=1,m
       do 30 i=1,10
         s = s + ra(i)/rc(i)
  30   continue
       do 40 i=2,10
         rb(i) = rb(i-1) + ra(i)
  40   continue
   2  continue
      write(6,*) rb
      write(6,*) s,j
      k=0
   3  continue
       do 50 i=1,10
         s = s + ra(i)*rc(i)
  50   continue
       do 60 i=2,10
         rb(i) = rb(i-1) + ra(i)
  60   continue
      k=k+1
      if(k.le.m) go to 3
      write(6,*) rb
      if( abs((s-49.3823776)/s) .gt. 0.1e-5 ) stop ' NG 1 '
      write(6,*) 49.3823776,j
      stop
      end
