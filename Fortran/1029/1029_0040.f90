      logical*4::l1,l2,l3,l4

      n=0

      l1=.true.
      l2=.true.
      l3=.true.
      l4=.true.

      if ( l1 .and. l2 .and. l3 .and. l4 ) then
        n=n+1
        l1=.false.
        l2=.false.
        l3=.false.
        l4=.false.
      endif

      if ( l1 .or. l2 .or. l3 .or. l4 ) then
        write(6,*) "NG"
      endif

      if (n/=1) write(6,*) "NG"
      print *,'pass'

      end
