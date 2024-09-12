      real *8 a(100,10,10)
      real *8 c(10,10,10,10,10)
      real *8 d(1000,10,10)
      a=1
      c=3
      d=4
      call sub(a,c,d)
      write(6,*)"a=",a
      end
      subroutine sub(a,c,d)
      real *8 a(100,10,10)
      real *8 c(10,10,10,10,10)
      real *8 d(1000,10,10)

      do 1 m=1,10
        do 2 l=1,10
          do 3 k=1,10
            do 4 j=1,10
              do 5 i=1,10
                c(i,j,k,l,m)=c(i,j,k,l,m)+d(i,k,l)*sin(i*0.314)
                d(i,k,l)=a(i,j,1)+a(i,j,2)
                d(i+10,k,l)=d(i,k,l)*2.
                d(i+20,k,l)=d(i,k,l)*3.
                d(i+30,k,l)=d(i,k,l)*4.
                d(i+40,k,l)=d(i,k,l)*5.
                d(i+80,k,l)=d(i+10,k,l)*0.0625d0
                d(i+90,k,l)=d(i,k,l)*sin(i*0.0314)
    5         continue
    4       continue
    3     continue
    2   continue
    1 continue
      end
