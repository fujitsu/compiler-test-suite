c
      program    rnr0010
      logical    result/ .true. /, lgf
      integer*4  iw1/1/, iw2/2/, iw3/3/, iw4/4/, iw5/5/
      do 100 i=1,10
        iw1 = (iw1/iw2)/(iw3/iw2)/(iw4/iw3)/(iw5/iw4)+1
        iw2 = mod( mod(mod(iw1,iw3),mod(iw2,iw4)),
     .             mod(mod(iw3,iw5),mod(iw5,iw3)) )+2
        result=result .and. lgf( iw1,mod(mod(iw2,iw1),mod(iw3,iw2)) )
        iw3=(iw1/iw5+3)/(iw2/iw2)
        iw4=mod( mod(iw1,iw5), mod(iw2,iw4) )+3
100   continue
      if (result) then
        if ( (iw1.eq.1) .and.
     .       (iw2.eq.2) .and.
     .       (iw3.eq.3) .and.
     .       (iw4.eq.4)       ) then
          write(6,*) '*** ok ***'
        else
          write(6,*) '*** ng ***'
        endif
      else
        write(6,*) '+++ ng +++'
      endif
      stop
      end
      function   lgf(j,l)
      logical    lgf
      lgf=(j.eq.1).and.(l.eq.0)
      end
