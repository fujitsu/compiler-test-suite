      program main
      real*8    dv1(10),dv2(10),dv3(10)
      integer*4   ias
      data dv2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data dv1/10*0.0/
      data dv3/10*0.0/
      ias=1
      do 10 i=2,10
        dv1(i)=dv2(i)*dv2(i)
        dv3(i)=dv1(i)
        if (dv1(i).gt.dv2(i)*4.) goto 11
        dv3(i)=dv1(i)
        goto 10
  11    if (dv1(i).gt.dv2(i)*8)  dv1(i-1)=dv3(i)/4.
  10  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      j=dv2(i-1)
      m=dv2(i-3)
      do 20 i=5 ,1,-1
        dv1(j)=dv2(i*2)
        dv1(m)=dv3(i)
        dv1(i)=dv1(j)+dv1(m)
  20  continue
      write(6,*) dv1
      stop
      end
