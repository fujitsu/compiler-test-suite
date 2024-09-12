      program main
      common  /a/dv2
      real*8  dv1(11)/11*0./,dv2(2,10)/20*0./
      real*8  qv3(7,10)/70*0./
      do 10 i=2,10
        dv1(i)=dv1(i+1)
        do 20 j=1,2
  20     dv2(j,i)=j
        call  sub1(i)
        dv1(i-1)=i*i/3.
        do 30 j=1,7
  30     qv3(j,i)=dv2(1,j)
       write (6,*) i
  10  continue
       write(6,*) dv1
       write(6,*) dv2
       write(6,*) qv3
       stop
       end
       subroutine sub1(n)
       real*8     dv2(2,10)
       common /a/dv2
       m=min(n+1,10)
       write(6,600)  (dv2(1,i),dv2(2,i),i=1,m)
  600  format(2h  ,d23.16,1h ,d23.16)
       return
       end
