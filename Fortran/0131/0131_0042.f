c
      program    st05
      logical    result/ .true. /, lgf
      integer*2  ih1/1/, ih2/2/, ih3/3/, ih4/4/, ih5/5/, ihz/0/
      integer*4  iw1/1/, iw2/2/, iw3/3/, iw4/4/, iw5/5/
      do 100 i=1,10
        ih1 = (ih2*ih3)*(ih3*ih4)*(ih4*ih5)*(ih4*ihz)+1
        ih2 = (ih3/ih1)/(ih4/ih2)/(ih5/ih3)/(ih4/(ih1+3))+1
        iw1 = (iw1/iw2)/(iw3/iw2)/(iw4/iw3)/(iw5/iw4)+1
        iw2 = mod( mod(mod(iw1,iw3),mod(iw2,iw4)),
     .             mod(mod(iw3,iw5),mod(iw5,iw3)) )+2
        result=result .and. lgf( ih1,
     .                           iw1,
     .                           (ih1*iw1)*(ih2*iw2)/(ih3/iw3),
     .                           mod(mod(iw2,iw1),mod(iw3,iw2)) )
        iw3=(ih1/ih5+3)/(ih2/ih2)
        iw4=mod( mod(ih1,ih5), mod(ih2,ih4) )+3
100   continue
      if (result) then
        if ( (ih1.eq.1) .and.
     .       (ih2.eq.2) .and.
     .       (iw1.eq.1) .and.
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
      function   lgf(i,j,k,l)
      logical    lgf
      integer*2  i
      lgf=(i.eq.1).and.(j.eq.1).and.(k.eq.4).and.(l.eq.0)
      end
