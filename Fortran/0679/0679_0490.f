      program main
      real*8   dv1(10)/10*0./
      ds=0
      do 10 i=2,10
       dv1(i)=i
       ds=ds+dv1(i-1)
  10  continue
      write(6,*) ds,dv1
      stop
      end
