      program main
      real*8     dv1(10),dv2(10),dv3(0:11)
      logical*4  lv1(5)
      common     //dv1,dv2,dv3,lv1
      ds=0
      call  sub1(n)
      do 10 i=1,n
        if (dv1(i).gt.0) then
           ds = ds + dv1(i)
        end if
        if (dv2(i).gt.0) then
           dv3(i) = ds * dv3(i-1)
           if ( lv1(1) ) then
             dv3(i+1) = dv3(i)
           end if
        end if
        if ( lv1(2) )
     &     dv3(1) = dv3(1) + dv3(i+1)
        dv2(i) = ds
  10  continue
       write(6,*) dv1
       write(6,*) dv2
       write(6,*) dv3
       write(6,*) ds
       write(6,*) lv1
       stop
       end

       subroutine sub1(n)
       real*8     dv(32)
       logical*4  lv1(5)
       common     //dv,lv1
       n= 10
       do 10 i=1,5
   10    lv1(i) = mod(i,2).eq.0
       do 20 i=1,32
   20    dv(i) = ((-1)**i)*i
       return
       end
