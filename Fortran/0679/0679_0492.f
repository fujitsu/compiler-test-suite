      program main
      real*8   dv1(0:10)/11*0./,ds/3./
      real*8   qv(3:10)/8*0./
      do 10 i=3,10
       dv1(i)=i
       if (ds.eq.3.0) then
        ds=ds+dv1(i-1)
       end if
       dv1(i-1)=i*i
       qv(i)=dv1(i-2)
       dv1(i-3)=dv1(i-3)*dv1(i-3)
  10  continue
      write(6,*) ds
      write(6,*) dv1
      write(6,*) qv
      stop
      end
