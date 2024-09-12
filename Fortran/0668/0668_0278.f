      program main
      complex*8 a01(10,10),a02(10,10)
      complex*8 e01(10,10),e02(10,10),e03(10,10),e04(10,10),e05(10,10)
      complex*8 e06(10,10),e07(10,10),e08(10,10),e09(10,10),e10(10,10)
      complex*8 e11(10,10)
      complex*8 p01(100)
      integer*4 place,indx
      data (p01(i),i=1,100)/100*(1.0,10.0)/
      do 5 i=1,10
        do 7 j=1,10
            a01(j,i)=p01(10*(i-1)+j)*i
            a02(j,i)=p01(10*(i-1)+j)*i*10.0
            e05(j,i)=a01(j,i)*a02(j,i)
            e07(j,i)=a02(j,i)/a01(j,i)
    7   continue
    5 continue
      do 10 i=1,10
        do 20 j=1,10
            e10(j,i)=a01(j,i)+a02(j,i)
            e01(j,i)=csqrt(a01(j,i)+a02(j,i))
            e02(j,i)=e05(j,i)*a02(j,i)

            if (mod(i,2).eq.0) then
               e03(j,i)=a01(j,i)+a02(j,i)
            else
               e04(j,i)=a01(j,i)*a02(j,i)
            end if

            e05(j,i)=csqrt(e07(j,i)+a02(j,i))

            if (mod(i,2).eq.1) then
               e06(j,i)=a01(j,i)+a02(j,i)
            else
               e07(j,i)=e05(j,i)*a02(j,i)
            end if

            e08(j,i)=csqrt(a01(j,i)+a02(j,i))

            if (mod(i,2).eq.1) then
               e03(j,i)=a01(j,i)+a02(j,i)
            else
               e04(j,i)=e05(j,i)*a02(j,i)
            end if

            e06(j,i)=csqrt(e07(j,i)+a02(j,i))
            e09(j,i)=e05(j,i)*a02(j,i)

            if (mod(i,2).eq.0) then
               e11(j,i)=e04(j,i)
            else
               e11(j,i)=e07(j,i)
            end if

   20   continue
   10 continue
      do 30 i=1,10
        do 35 j=1,10
        if(e08(j,i).ne.e01(j,i)) then
           place=30
           indx=10*(i-1)+j
           write(6,999) place,indx
           go to 1000
        end if
   35   continue
   30 continue

      do 40 i=1,10
        do 45 j=1,10
        if(e09(j,i).eq.e02(j,i)) then
           place=40
           indx=10*(i-1)+j
           write(6,999) place,indx
           go to 1000
        end if
   45   continue
   40 continue

      do 50 i=1,10
        do 55 j=1,10
        if(e11(j,i).eq.e02(j,i)) then
             place=50
             indx=10*(i-1)+j
             write(6,999) place,indx
             go to 1000
        end if
   55 continue
   50 continue

      do 60 i=1,10
        do 65 j=1,10
        if(e10(j,i).ne.e03(j,i)) then
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
