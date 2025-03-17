      logical:: fun
      n=0
      i=2;j=2
      if ( fun(i) .or. i.eq.j ) then
        n=n+1
      else
        write(6,*) "NG"
      endif
      if ( fun(1) .and. i.eq.j ) then
        if ( fun(1) .and. i.eq.j ) then
          n=n+1
        else
          write(6,*) "NG"
        endif
      else
        write(6,*) "NG"
      endif
      if (n/=2) write(6,*) "NG"
      print *,'pass'
      end

      logical function fun(i)
      if (i.eq.1) then
        fun=.true.
      else
        fun=.false.
      endif
      end
