      program main
      real*8 d1(10)/10*3/,d2(1000)/1000*2.5/
      data   n/700/,k/1/,ic0/0/,ic1/1/
      do 10 i=1,n,ic1
       d2(i)=d1(k)
       k=k+ic0
 10   continue
      write(6,*) (d2(i),i=1,1000,100)
      stop
      end
