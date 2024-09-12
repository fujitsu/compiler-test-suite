      program main
      real*8     dv1(12),dv2(12),dv3(12)
      logical*4  lv1(5)
      data dv1/1,2,3,4,5,6,7,8,9,10,11,12/
      data dv2/1,2,3,4,5,6,7,8,9,10,11,12/
      data dv3/1,2,3,4,5,6,7,8,9,10,11,12/
      data lv1/.true.,.false.,.true.,.false.,.true./
      ds = 0.0
      do 10 i=2,11
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
