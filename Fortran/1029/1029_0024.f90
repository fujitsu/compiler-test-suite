      logical::l1,l2,l3,l4,l5,l6

      l1=.true. ; l2=.true. ; l3=.true. ; l4=.true.
      if (l1.and.l2.or.l3.and.l4) then
        n=1
      else
        write(6,*) "NG"
      endif

      l1=.true. ; l2=.true. ; l3=.false. ; l4=.false.
      if (l1.and.l2.or.l3.and.l4) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      l1=.false. ; l2=.false. ; l3=.true. ; l4=.true.
      if (l1.and.l2.or.l3.and.l4) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      l1=.true. ; l2=.false. ; l3=.true. ; l4=.true.
      if (l1.and.l2.or.l3.and.l4) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      l1=.false. ; l2=.true. ; l3=.true. ; l4=.true.
      if (l1.and.l2.or.l3.and.l4) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      l1=.false. ; l2=.true. ; l3=.false. ; l4=.false.
      if (l1.and.l2.or.l3.and.l4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      l1=.false. ; l2=.false. ; l3=.true. ; l4=.false.
      if (l1.and.l2.or.l3.and.l4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      l1=.true. ; l2=.false. ; l3=.true. ; l4=.false.
      if (l1.and.l2.or.l3.and.l4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      l1=.false. ; l2=.false. ; l3=.false. ; l4=.false.
      if (l1.and.l2.or.l3.and.l4) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if (n/=9) write(6,*) "NG"
      print *,'pass'

      end
