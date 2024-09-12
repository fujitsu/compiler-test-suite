      program main
      real a(10,6)/10*3.,10*4.,10*5.,15*6.,15*7./,b(6)/0,0,0,0,0,0/
      do 10 i=1,6
       s=i
       do 11 j=1,9
        a(j+1,i)=a(j,i)+s
        s=a(j+1,i)
 11    continue
       b(i)=s
 10   continue
      write(6,600)((a(j,i),j=1,10),i=1,6)
      write(6,600) (b(i),i=1,6)
 600  format(1h ,10f5.0,/)

      do 20 i=1,6
       s=i
       if(i.gt.2) b(i)=s
       do 21 j=1,9
        a(j+1,i)=a(j,i)-j
  21   continue
       s=b(i)/2.
       b(i)=s*s
  20  continue
      write(6,600)((a(j,i),j=1,10),i=1,6)
      write(6,*  )(b(i),i=1,6)
      stop
      end
