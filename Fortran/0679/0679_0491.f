      program main
      real*8   dv1(10)/10*0./,ds/3./
      do 10 i=2,10
       dv1(i)=i
       if (ds.eq.2.0) goto 10
        ds=ds+dv1(i-1)
  10  continue
      write(6,*) ds,dv1
      stop
      end
