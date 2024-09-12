      program main
      real*8   dv1(10)/10*0./,dv2(2,10)
      dv2 = 0
      do 10 i=2,10
       dv1(i)=i
       do 20 j=1,2
  20    dv2(j,i)=j
       write(6,*) i
  10  continue
      write(6,*) dv1 ,dv2
      stop
      end
