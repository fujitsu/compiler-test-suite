      real*4 a,b,c,d
      real*8 da,db,dc,dd,e,f
      character*2 gn,gn2
      data a/-3.14e0/
      data b/3.14e0/
      write(6,1001)
 1001 format(' ','******* test of parallel sin,cos *******'///)
      gn='ok'
      do 10 i=1,1000
      da=a
      c=sin(a)
      d=cos(a)
      dc=dsin(da)
      dd=dcos(da)
      e=dabs(dc-c)
      f=dabs(dd-d)
      if(e.lt.0.1d-5.and.f.lt.0.1d-5) go to 20
      gn='ng'
      write(6,100) gn,a,c,d,dc,dd
  100 format(' ','**** ',a2,' ****',/,' x=  ',z8,/,
     *       ' ','sin(x) = ',z8,10x,' cos(x) = ',z8,/,
     *       ' ','dsin(x)= ',z16,2x,' dcos(x)= ',z16,/)
   20 a=a/4.44e0
   10 continue
      gn2='ok'
      do 30 i=1,1000
      db=b
      c=sin(b)
      d=cos(b)
      dc=dsin(db)
      dd=dcos(db)
      e=dabs(dc-c)
      f=dabs(dd-d)
      if(e.lt.0.1d-5.and.f.lt.0.1d-5) go to 40
      gn2='ng'
      write(6,100) gn2,b,c,d,dc,dd
   40 b=b/4.44e0
   30 continue
      if(gn.ne.'ok'.or.gn2.ne.'ok') stop
      write(6,2001)
 2001 format(' ','++++++++ test of sin,cos -- ok ++++++++')
      stop
      end
