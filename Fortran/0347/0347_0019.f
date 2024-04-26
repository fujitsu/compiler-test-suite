      dimension a(5,5,5),b(5,5,5),c(5,5,5),d(5,5,5)
      data a/25*0.9,25*2.1,25*3.2,25*4.1,25*5.6/
      data b/5*0.6,25*1.1,25*13.2,25*4.21,25*5.5,20*3.14/
      data c/15*0.6,25*7.1,25*12.2,25*7.21,25*1.5,10*23.14/
      data d/125*0.0/
      s=0
      do 10 k=1,5
        b(k,1,1)=0
        do 10 i=1,5
         j=1
         do 10 while(j.lt.6)
          a(k,i,j)=b(k,i,j)+c(k,j,i)
  10      j=j+1
      do 20 k=1,5
       do 21 i=1,5
        t=a(k,1,i)
  22    if (j.le.0.or.j.gt.5) goto 21
         d(k,i,j)=b(k,j,i)/t
         j=j-1
        goto 22
  21   continue
  20  c(k,k,k)=d(k,k,k)
      write(6,*) ' a',a
      write(6,*) ' b',b
      write(6,*) ' c',c
      write(6,*) ' d',d
      write(6,*) ' t',t
      stop
      end
