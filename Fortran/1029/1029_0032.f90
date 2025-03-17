      integer::a(3),b(3)
      n=0

      a=(/1,2,3/)
      b=(/1,2,3/)
      if ( a(1).eq.b(1) .and. ( a(2).eq.b(2) .or. a(3).eq.b(3) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      a=(/1,2,3/)
      b=(/1,2,2/)
      if ( a(1).eq.b(1) .and. ( a(2).eq.b(2) .or. a(3).eq.b(3) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      a=(/1,2,3/)
      b=(/1,1,3/)
      if ( a(1).eq.b(1) .and. ( a(2).eq.b(2) .or. a(3).eq.b(3) ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      a=(/1,2,3/)
      b=(/0,2,3/)
      if ( a(1).eq.b(1) .and. ( a(2).eq.b(2) .or. a(3).eq.b(3) ) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if (n/=4) write(6,*) "NG"
      print *,'pass'

      end
