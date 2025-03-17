      logical:: fun
      complex:: fun_comp,m

      i=2;j=2;n=0
      k=0

      if ( ( fun(i) .or. i.eq.j ) .and. fun_comp() .eq. k ) then
        write(6,*) "NG"
      else
        n=1+n
      endif

      m=(1.0,0.0)
      if ( ( fun(i) .or. i.eq.j ) .and. fun_comp() .eq. m ) then
        n=1+n
      else
        write(6,*) "NG"
      endif

      m=(1.0,1.0)
      if ( ( fun(i) .or. i.eq.j ) .and. fun_comp() .eq. m ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      if (n==3) goto 100
      write(6,*) "NG"
 100  continue

      if (n.ge.1) then
        if (n.ge.2) then
          if (n.ge.3) then
            if (n/=3) write(6,*) "NG"
          else
            write(6,*) "NG"
          endif
        else
          write(6,*) "NG"
        endif
      else
        write(6,*) "NG"
      endif

      if (fun(1)) goto 200
        write(6,*) "NG"
  200 continue

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

      fun_comp = (1.0,0.0)

      end
