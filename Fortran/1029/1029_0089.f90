      logical :: l
      n=0
      r=-1.0e0
      l=.false.
      s=-0.0e0

      if ( .not. (.not.l) .or. ( .not. r.eq.+(-1.0e0+s)) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif
      if ( .not. (.not.l) .or. ( .not. -r.eq.+(-1.0e0+s)) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif
      if ( (.not. (.not.l) .or. ( .not. -(r**1).eq.+(-1.0e0+s))) .and. &
           n.eq.2 ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (.not.(.not.n/=3)) write(6,*) "NG"
      print *,'pass'

      end
