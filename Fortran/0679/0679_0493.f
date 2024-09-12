      program main
      integer*2 h
      real*8   dv1(0:10)/11*0./,ds/3./
      real*8   qv1(3:10)/8*0./,qv2(1:10)/10*0./
      call     init(h)
      do 10 i=3,10
       dv1(i)=i
       if (ds.eq.3.0) then
        ds=ds+dv1(i-1)
        if (h.ne.0) qv2(i)=1.
       end if
       dv1(i-1)=i*i
       qv1(i)=dv1(i-2)
       dv1(i-3)=dv1(i-3)*dv1(i-3)
  10  continue
      write(6,*) ds
      write(6,*) dv1
      write(6,*) qv1
      write(6,*) qv2
      stop
      end
      subroutine init (h)
      integer*2 h
      h=1
      return
      end
