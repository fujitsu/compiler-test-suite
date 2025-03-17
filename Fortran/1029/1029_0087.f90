      n=0
      i1=1;i2=2
      k1=2;k2=2
      i=0

      if (.not.(i1.eq.k1 .and. i2.eq.k2)) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (.not.(i1.eq.k1 .and. .not. i2.ne.k2).and.i.ne.1) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (.not.(.not.i1.ne.k1 .and. i2.eq.k2).and.i.ne.2) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (n/=3) write(6,*) "NG"
      print *,'pass'

      end
