
      integer,parameter ::a(0)=(/ (k,k=1,0) /)
      integer,parameter ::l1=lbound(char(a),1)
      integer,parameter ::u1=ubound(char(a),1)
      integer,parameter ::l2=lbound(int(a),1)
      integer,parameter ::u2=ubound(int(a),1)
      
      call checki4 (l1  , lbound(char(a),1))
      call checki4 (u1  , ubound(char(a),1))
      call checki4 (l2  , lbound(int(a),1))
      call checki4 (u2  , ubound(int(a),1))
      print *,'*** ok ***'
      end

      subroutine checki4  (i ,ti)
      integer*4  i,ti
      if (i.ne.ti)  then
        print *,'??? ng ???'
        stop 1
      endif
      end
