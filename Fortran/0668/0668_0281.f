      program main
      integer*4 a01(10)
      integer*4 s,t,u,w,x
      integer*4 place
      logical e(10),f(10),g(10)
      real*4 p01(10)
      data p01/10*100.0/
      data e/5*.true.,5*.false./
      data f/3*.true.,7*.false./
      data g/7*.true.,3*.false./
      data s/0/,t/0/,u/0/,w/0/,x/0/

      do 10 i=1,10
        a01(i)=sqrt(p01(i))
   10 continue

      do 20 i=1,10
        s=s+a01(i)
        t=t+a01(i)
   20 continue
      do 25 i=1,10
        if(t.ne.s) then
           place=20
           write(6,999) place
           go to 1000
        end if
   25 continue
      s=0
      t=0
      do 30 i=1,10
        u=u+a01(i)
        if(e(i).and.(f(i).or.g(i))) then
          s=s+a01(i)
          t=t+a01(i)
        endif
   30 continue
      do 35 i=1,10
        if(t.ne.s) then
           place=30
           write(6,999) place
           go to 1000
        end if
   35 continue

      s=0
      t=0
      u=0
      do 40 i=1,10
        s=s+a01(i)
        if(mod(i,2).eq.0) w=w+a01(i)
        t=t+a01(i)
        if(mod(i,2).eq.0) x=x+a01(i)
        u=u+a01(i)
   40 continue
      do 45 i=1,10
        if(u.ne.s) then
           place=40
           write(6,999) place
           go to 1000
        end if
   45 continue

      s=0
      t=0
      u=0
      do 50 i=1,10
        if(e(i).and.(f(i).or.g(i))) then
          s=s+a01(i)
          if(mod(i,2).eq.0) w=w+a01(i)
          t=t+a01(i)
          if(mod(i,2).eq.0) x=x+a01(i)
          u=u+a01(i)
        end if
   50 continue
      do 55 i=1,10
        if(u.ne.s) then
           place=50
           write(6,999) place
           go to 1000
        end if
   55 continue

      write(6,*) 'ok ok ok ok ok ok'
      go to 1000
  999 format('**** error at ',i2,'th loop ***')
 1000 continue
      stop
      end
