      program main
      common  /a/dv2
      real*8  dv1(11)/11*0./,dv2(2,10)/20*0./
      real*8  qv3(7,10)/70*0./
      do 10 i=2,10
        dv1(i)=dv1(i+1)
        do 20 j=1,2
         dv2(j,i)=j
  20     write(6,*) i,j,dv2(j,i)
        dv1(i-1)=i*i/4.
        do 30 j=1,7
  30     qv3(j,i)=dv2(1,j)
       write (6,*) i
  10  continue
       write(6,*) dv1
       write(6,*) dv2
       write(6,*) qv3
       stop
       end
