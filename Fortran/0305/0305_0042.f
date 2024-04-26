       call sub(1,1,1,1)
       print *, ' end '
       stop
       end
      subroutine sub(itest,z,tdmax,B)
      integer itest,z,tdmax,B
      do 111 ii = 1, 100
         if(itest.ne.0) then
            if (z.eq.74) then
            end if
            if (z.eq.29) then
            end if
         end if
         do 400 JJ=1,1
            do 400 J=1,1-JJ,2
 400     continue
         if( B .eq. tdmax ) goto 222
 111  continue
 222  continue
      return
      end
