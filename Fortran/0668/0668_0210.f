      program main
      real*8    dv1(10),dv2(10),dv3(10),sum
      data dv1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data dv2/10.,20.,30.,40.,50.,60.,70.,80.,90.,100./
      sum=0.
      do 100 i=1,10
        sum=sum+dv1(i)
 100  continue
      write(6,*) ' ***** loop 1 ***** '
      write(6,1000) sum
      sum=10.
      do 200 i=2,10
       dv3(i)=i
       dv2(i)=dv2(i-1)*sum+dv3(i)
 200  continue
      write(6,*) ' ***** loop 2 ***** '
      write(6,1001) dv2
 1000 format(d10.3)
 1001 format(5d10.3)
      stop
      end
