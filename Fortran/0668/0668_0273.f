      program main
      real a(512),b(512,512),c(512,512),d(512)
      data c,b/262144*1.0,262144*2.0/
      a=0
      d=0
      do 10 i=1,512
      do 10 j=1,512
      do 10 k=1,512
 10   d(i)=d(i)+b(i,k)+c(i,j)
      do 20 i=1,512
      do 20 j=1,512
      do 20 k=1,512
 20   a(i)=a(i)+b(i,j)+c(i,k)
      write(6,*) a(1),a(512)
      write(6,*) d(1),d(512)
      end
