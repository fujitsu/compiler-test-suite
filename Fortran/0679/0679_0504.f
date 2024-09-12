      program main
      real*8     dv1(11)/11*0./
      logical*4  lv1(10)
      common     //lv1
      call  sub1(n)
      do 10 i=1,n
        dv1(i)=i
        if ( lv1(i) ) then
          if (n.gt.9) then
           do 11 j=1,i
  11        dv1(2) = dv1(2) + dv1(j)
          end if
        end if
  10  continue
       write(6,*) dv1
       write(6,*) lv1
      do 20 i=1,n
        dv1(i)=i-1
        if ( lv1(i) ) then
          if (n.gt.10) then
           do 21 j=1,i
  21        dv1(2) = dv1(2) + dv1(j)
          end if
        end if
  20  continue
       write(6,*) dv1
       write(6,*) lv1
       stop
       end

       subroutine sub1(n)
       logical*4  lv1(10)
       common     //lv1
       n= 10
       do 10 i=1,10
   10    lv1(i) = mod(i,2).eq.0
       return
       end
