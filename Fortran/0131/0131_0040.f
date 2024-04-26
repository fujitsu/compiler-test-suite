c
      program    st02
      integer*2  ih1/1/, ih2/2/, ih3/3/, ih4/4/, ih5/5/
      integer*4  iw1/1/, iw2/1/, iw3/1/, iw4/1/, iw5/1/
c
      ih1 = (ih2*ih3)*(ih3*ih4)*(ih4*ih5)*ih4
      iw1 = (iw1/iw2)/(iw2/iw3)/(iw3/iw4)/(iw4/iw5)
      call sub( ih1, iw1, (ih1*iw1)*(ih2*iw2)/(ih3/iw3) )
      stop
      end
      subroutine sub( ih, iw, ia )
      integer*2  ih
      if ( (ih.eq.5760) .and. (iw.eq.1) .and. (ia.eq.3840) ) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
        write(6,*) 'ih=',ih
        write(6,*) 'iw=',iw
        write(6,*) 'ia=',ia
      endif
      end
