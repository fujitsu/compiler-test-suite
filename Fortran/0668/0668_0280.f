      program main
      real*4 ab(10),cd(10)
      real*4 p01(10),q01(10),q02(10)
      integer*4 place,indx
      data (p01(i),i=1,10)/10*1000.0/
      data (ab(i),i=1,10)/10*2.0/
      data (cd(i),i=1,10)/10*4.0/
      data q01,q02/10*2.,10*2./

      do 105 i=1,10
        p01(i)=sqrt(p01(i))
  105 continue
      do 10 i=1,5
        q01(i)=ab(i)
        ab(i+5)=p01(i)
        q02(i)=ab(i)
   10 continue
      do 15 i=1,5
        if(q02(i).ne.q01(i)) then
           place=10
           indx=i
           write(6,999) place,indx
           go to 1000
        end if
   15 continue

      do 205 i=1,10
        p01(i)=sqrt(p01(i))
  205 continue
      do 20 i=1,5
        q01(i)=ab(i)
        cd(i)=p01(i)
        q02(i)=ab(i)
   20 continue
      do 25 i=1,5
        if(q02(i).ne.q01(i)) then
           place=20
           indx=i
           write(6,999) place,indx
           go to 1000
        end if
   25 continue

      do 305 i=1,10
        p01(i)=sqrt(p01(i))
  305 continue
      do 30 i=1,5
        q01(i)=ab(i)
        cd(i+5)=p01(i)
        q02(i)=ab(i)
   30 continue
      do 35 i=1,5
        if(q02(i).ne.q01(i)) then
           place=30
           indx=i
           write(6,999) place,indx
           go to 1000
        end if
   35 continue

      do 405 i=1,10
        p01(i)=sqrt(p01(i))
  405 continue
      do 40 i=1,5
        q01(i)=ab(i)
        if(mod(i,2).eq.0) then
          ab(i+5)=p01(i)
        else
          ab(i+5)=p01(i)
        endif
        q02(i)=ab(i)
   40 continue
      do 45 i=1,8
        if(q02(i).ne.q01(i)) then
           place=40
           indx=i
           write(6,999) place,indx
           go to 1000
        end if
   45 continue

      write(6,*) 'ok ok ok ok ok ok'
      go to 1000
  999 format('*** error at ',i2,'th loop  index= ',i2,' **')
 1000 continue
      stop
      end
