
      integer,parameter   ::a(0)=(/ (k,k=1,0) /)
      character,parameter ::b(0)=(/ (char(k),k=1,0) /)
      integer,parameter ::l1=lbound(abs(a),1)
      integer,parameter ::u1=ubound(abs(a),1)
      integer,parameter ::l2=lbound(iabs(a),1)
      integer,parameter ::u2=ubound(iabs(a),1)
      integer,parameter ::l3=lbound(achar(a),1)
      integer,parameter ::u3=ubound(achar(a),1)
      integer,parameter ::l4=lbound(adjustl(b),1)
      integer,parameter ::u4=ubound(adjustl(b),1)
      integer,parameter ::l5=lbound(adjustr(b),1)
      integer,parameter ::u5=ubound(adjustr(b),1)
      integer,parameter ::l6=lbound(iachar(b),1)
      integer,parameter ::u6=ubound(iachar(b),1)
      integer,parameter ::l7=lbound(ichar(b),1)
      integer,parameter ::u7=ubound(ichar(b),1)
      integer,parameter ::l8=lbound(len_trim(b),1)
      integer,parameter ::u8=ubound(len_trim(b),1)
      integer,parameter ::l9=lbound(not(a),1)
      integer,parameter ::u9=ubound(not(a),1)
      
      call checki4 (l1  , lbound(abs(a),1))
      call checki4 (u1  , ubound(abs(a),1))
      call checki4 (l2  , lbound(iabs(a),1))
      call checki4 (u2  , ubound(iabs(a),1))
      call checki4 (l3  , lbound(achar(a),1))
      call checki4 (u3  , ubound(achar(a),1))
      call checki4 (l4  , lbound(adjustl(b),1))
      call checki4 (u4  , ubound(adjustl(b),1))
      call checki4 (l5  , lbound(adjustr(b),1))
      call checki4 (u5  , ubound(adjustr(b),1))
      call checki4 (l6  , lbound(iachar(b),1))
      call checki4 (u6  , ubound(iachar(b),1))
      call checki4 (l7  , lbound(ichar(b),1))
      call checki4 (u7  , ubound(ichar(b),1))
      call checki4 (l8  , lbound(len_trim(b),1))
      call checki4 (u8  , ubound(len_trim(b),1))
      call checki4 (l9  , lbound(not(a),1))
      call checki4 (u9  , ubound(not(a),1))
      print *,'*** ok ***'
      end

      subroutine checki4  (i ,ti)
      integer*4  i,ti
      if (i.ne.ti)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
