      program main
      real *8 a(100,10,10),b(1000,10)
      real *8 c(10,10,10,10,10)
      real *8 d(1000,10,10)
      data    a/10000*1.d0/
      data    b/10000*2.d0/
      data    c/100000*3.d0/
      data    d/100000*4.d0/

      call sub(a,b,c,d)

      write(6,99)((b(i,j),j=1,10),i=1,1000,101)
      write(6,99)(c(i,i,i,i,i),i=1,10)
      write(6,99)(((d(i,j,k),k=1,10,3),j=2,8),i=1,1000,99)
   99   format(4f20.12)
      end
      subroutine sub(a,b,c,d)
      real *8 a(100,10,10),b(1000,10)
      real *8 c(10,10,10,10,10)
      real *8 d(1000,10,10)
      real *8 temp1(100,10),temp2(1000,10),temp3(100,10,10)

      do 1 m=1,10
        do 2 l=1,10
          do 3 k=1,10
            do 4 j=1,10
              do 5 i=1,10
                c(i,j,k,l,m)=c(i,j,k,l,m)+d(i,k,l)*log(i*0.314)
                d(i,k,l)=a(i,j,1)+a(i,j,2)+a(i,j,3)+b(i+k+l,j)
                d(i+10,k,l)=d(i,k,l)*2.
                d(i+20,k,l)=d(i,k,l)*3.
                d(i+30,k,l)=d(i,k,l)*4.
                d(i+40,k,l)=d(i,k,l)*5.
                d(i+50,k,l)=d(i+40,k,l)*0.5d0
                d(i+60,k,l)=d(i+30,k,l)*0.25d0
                d(i+70,k,l)=d(i+20,k,l)*0.125d0
                d(i+80,k,l)=d(i+10,k,l)*0.0625d0
                d(i+90,k,l)=d(i,k,l)*log(i*0.0314)
    5         continue
    4       continue
            temp3(k,l,m)=sin(k*0.0314)+exp(k*0.0314)
    3     continue
    2   continue
    1 continue

      do 6 k=1,10
        do 6 j=1,10
          do 6 i=1,10
            a(i,j,k)=temp3(i,j,k)
            do 7 ii=1,1000
    7         temp2(ii,j)=a(i,j,k)
    6 continue

      do 8 k=1,10
        do 8 j=1,10
          do 8 i=1,100
            if(i.ge.11)temp3(i,j,k)=a(i,j,k)*0.01
            if(k.eq.1)temp1(i,j)=0.d0
    8       temp1(i,j)=a(i,j,k)+temp1(i,j)

      do 9 j=1,10
        do 9 i=1,1000
    9     b(i,j)=b(i,j)+temp1(j,j)+temp2(i,j)

      do 10 i=1,1000
        do 11 j=1,8
          do 11 k=1,9
            d(i,j,k)=d(i,j,k+1)+b(i,k)
            if(abs(d(i,j,k)).gt.1.d12) d(i,j,k)=0.d0
            if(abs(d(i,j,k)).lt.1.d-12)d(i,j,k)=0.d0
            d(i,j,k)=d(i,j,k)+a(j,j,k)+a(j,j,k+1)
            if(abs(d(i,j,k)).gt.1.d12) d(i,j,k)=999.d0
            d(i,j,k)=d(i,j,k)+d(i,j,k+1)*b(i,j)+d(i,j+1,k)*0.001
     +              +d(i,j+2,k+1)*0.01
            if(abs(d(i,j,k)+d(i,j+1,k)+d(i,j+2,k)).gt.1.d12.and.
     +         abs(d(i,j,k)+d(i,j+1,k)+d(i,j+2,k)).lt.1.d-12)then
              d(i,j,k)=0.d0
            endif
   11   continue
   10   b(i,1)=b(i,2)*b(i,1)

      end
