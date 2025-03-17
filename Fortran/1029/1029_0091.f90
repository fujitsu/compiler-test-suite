      n=0

      call sub(n)

      if (n/=4) write(6,*) "NG"
     print *,'pass'
    end

    subroutine sub(n)

      i1=4;j1=-1;j2=2
      if (i1.eq.1+j1+j2**2) then
        n=n+1
      endif

      i1=7;j1=2;j2=4
      if (i1.eq.-1+j1**(j2-1)) then
        n=n+1
      endif

      i1=2;j1=3
      if (i1**2.eq.-5+j1**2) then
        n=n+1
      endif

      i1=2;j1=3
      if (i1**2.eq.(-5+j1)**2) then
        n=n+1
      endif

    end
