      program main
      real a(10,5)/10*3.,10*4.,10*5.,10*6.,10*7./,b(5)/0,0,0,0,0/
      do 10 i=1,5
       s=i
       do 10 j=1,9
        a(j+1,i)=a(j,i)+s
 10   continue
      write(6,600)((a(j,i),j=1,10),i=1,5)
 600  format(1h ,10f5.0,/)

      do 20 i=1,5
       s=i
       do 21 j=1,9
        a(j+1,i)=a(j,i)-j
  21  continue
        b(i)=s*s
  20  continue
      write(6,600)((a(j,i),j=1,10),i=1,5)
      write(6,600)(b(i),i=1,5)
      stop
      end
