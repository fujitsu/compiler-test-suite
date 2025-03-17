      logical:: fun
      complex:: fun_comp

      k=0
      if (fun_comp() .eq. k ) then
        n=1
      else 
        write(6,*) "NG"
      endif

      i=2;j=2
      if ( ( fun(i) .or. i.eq.j ) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      i=1
      if ( ( fun(i) .or. i.eq.j ) ) then
        if ( ( fun(i) .or. i.eq.j ) ) then
          n=n+1
        else
          write(6,*) "NG"
        endif
      else
        write(6,*) "NG"
      endif

      if (n/=3) write(6,*) "NG"
      print *,'pass'

      end

      logical function fun(i)

      if (i.eq.1) then
        fun=.true.
      else
        fun=.false.
      endif

      end

      complex function fun_comp()

      fun_comp = (0.0,0.0)

      end
