     program main
      real*4 ab(10),bc(10),cd(10)
      equivalence (ab(6),bc(1)),(bc(6),cd(1))
      real*4 p01(10),q01(10)/10*1/,q02(10)
      data (ab(i),i=1,10)/10*2.0/
      data (cd(i),i=1,10)/10*4.0/

      do 305 i=1,10
        p01(i)=100
  305 continue

      do 30 i=1,5
        q01(i)=ab(i+5)
        bc(i)=p01(i)
        q02(i)=ab(i+5)
   30 continue

      write(6,*) q01
      end
