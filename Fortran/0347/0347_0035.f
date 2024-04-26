      program main
      real*8    dv1(10,10),dv2(10,10),dv3(11)
      do 10 i=1,10
       dv3(i)=i
       goto 19
  11   do 20 j=1,10
        dv1(j,i)=j*i
        goto 21
  19   continue
       dv3(i+1)=i*i
       goto 11
  21    assign 15 to l
        goto l (15,20)
  15    dv2(i,j)=i+j
  20   continue
  10  continue
      write(6,*) dv1
      write(6,*) dv2
      write(6,*) dv3
      stop
      end
