      program main
      real*8 dv1(11)/11*0./,dv2(2,10),dv3(7,10)
      dv2 = 0
      dv3 = 0
      do 10 i=2,10
        dv1(i)=dv1(i+1)
        do 20 j=1,2
  20     dv2(j,i)=j
        dv1(i-1)=i*i/4.
        do 30 j=1,7
  30     dv3(j,i)=j
       write (6,*) i
  10  continue
       write(6,*) dv1,dv2,dv3
       stop
       end
