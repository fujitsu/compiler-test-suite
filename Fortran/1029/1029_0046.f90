  interface
    function fun(l) result(ll)
      logical::l
      logical*1::ll
    end function
  end interface

      logical::l(2,2)
      n=0

      l=.false.
      if (.not.l(1,1) .and. .not.l(2,1) .and. &
          .not.l(1,2) .and. .not.l(2,2)) then
        n=n+1
      else
        write(6,*) "NG" 
      endif
      l(2,2)=.true.
      if ((    l(1,1) .or.      l(2,1) .or. &
               l(1,2) .or.      l(2,2)) .and. .true.) then
        n=n+1
      else
        write(6,*) "NG" 
      endif

      l=.true.
      if (.not..not.fun(l(1,1)) .and. .not..not.fun(l(1,2)) .and.  &
          .not..not.fun(l(2,1)) .and. .not..not.fun(l(2,2)) ) then
        n=n+1
      else
        write(6,*) "NG" 
      endif
      l(2,2)=.false.
      if ( (   .not.fun(l(1,1)) .or.      .not.fun(l(1,2)) .or.  &
               .not.fun(l(2,1)) .or.      .not.fun(l(2,2))) .and. .true.) then
        n=n+1
      else
        write(6,*) "NG" 
      endif

      if (n/=4) write(6,*) "NG"
      print *,'pass'

      end

      function fun(l) result(ll)
      logical::l
      logical*1::ll

        ll=l

      end
