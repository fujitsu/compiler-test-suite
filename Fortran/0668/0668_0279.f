      program main
      parameter (eps=1e-4)
      real*4 a01(10,10),a02(10,10)
      real*4 e01(10,10),e02(10,10),e03(10,10),e04(10,10),e05(10,10)
      real*4 f01(10,10),f02(10,10),f03(10,10),f04(10,10)
      real*4 g01(10,10),g02(10,10),g03(10,10),g04(10,10)
      real*4 h01(10,10),h02(10,10),h03(10,10),h04(10,10),h05(10,10)
      real*4 p01(100)
      integer*4 place,indx
      data (p01(i),i=1,100)/100*(1.0,10.0)/
      do 5 i=1,10
        do 7 j=1,10
            a01(j,i)=p01(10*(i-1)+j)*i
            a02(j,i)=p01(10*(i-1)+j)*i*10.0
            e05(j,i)=a01(j,i)*a02(j,i)
    7   continue
    5 continue
      do 10 i=1,10
        do 20 j=1,10
            h01(j,i)=a01(j,i)+a02(j,i)
            e01(j,i)=sin(a01(j,i)+a02(j,i))
            e02(j,i)=cos(e01(j,i))
            e03(j,i)=sin(e01(j,i))
            e04(j,i)=sqrt(abs(e01(j,i)))

            if (mod(i,2).eq.0) then
               h02(j,i)=a01(j,i)+a02(j,i)
            else
               h03(j,i)=a01(j,i)*a02(j,i)
            end if

            f01(j,i)=cos(a01(j,i)+a02(j,i))
            f02(j,i)=cos(f01(j,i))
            f03(j,i)=sin(f01(j,i))
            f04(j,i)=sqrt(abs(f01(j,i)))

            if (mod(i,2).eq.1) then
               h04(j,i)=a01(j,i)+a02(j,i)
            else
               h05(j,i)=e05(j,i)*a02(j,i)
            end if

            g01(j,i)=sin(a01(j,i)+a02(j,i))
            g02(j,i)=cos(g01(j,i))
            g03(j,i)=sin(g01(j,i))
            g04(j,i)=sqrt(abs(g01(j,i)))

   20   continue
   10 continue
      do 30 i=1,10
        do 35 j=1,10
        if(abs(g01(j,i)-e01(j,i)).gt.eps) then
           place=30
           indx=10*(i-1)+j
           write(6,999) place,indx
           go to 1000
        end if
   35   continue
   30 continue

      do 40 i=1,10
        do 45 j=1,10
        if(abs(g02(j,i)-e02(j,i)).gt.eps) then
           place=40
           indx=10*(i-1)+j
           write(6,999) place,indx
           go to 1000
        end if
   45   continue
   40 continue

      do 50 i=1,10
        do 55 j=1,10
        if(abs(g03(j,i)-e03(j,i)).gt.eps) then
             place=50
             indx=10*(i-1)+j
             write(6,999) place,indx
             go to 1000
        end if
   55 continue
   50 continue

      do 60 i=1,10
        do 65 j=1,10
        if(abs(g04(j,i)-e04(j,i)).gt.eps) then
           place=60
           indx=10*(i-1)+j
           write(6,999) place,indx
           go to 1000
        end if
   65   continue
   60 continue
      write(6,*) 'ok ok ok ok ok ok'
      go to 1000
  999 format('*** error at ',i2,'th loop  index= ',i2,' **')
 1000 continue
      stop
      end
