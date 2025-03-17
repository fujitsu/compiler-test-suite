      integer::a(3),b(3),c(3)
      n=0

      a=(/1,1,1/)
      b=(/2,2,1/)
      c=(/3,3,1/)

      if ( ( (any(a/=1)) .or. (any(b/=2)) ) .and. (.not.(any(c/=3))) ) then
        write(6,*) "NG"
      else
        n=n+1
      endif

      a=(/1,1,1/)
      b=(/2,2,1/)
      c=(/3,3,3/)

      if ( ( (any(a/=1)) .or. (any(b/=2)) ) .and. (.not.(any(c/=3))) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      a=(/1,1,1/)
      b=(/2,2,2/)
      c=(/3,3,3/)

      if ( ( (any(a/=1)) .or. .not.(any(b/=2)) ) .and. (.not.(any(c/=3))) ) then
        n=n+1
      else
        write(6,*) "NG"
      endif

      if (n/=3) write(6,*) "NG"
      print *,'pass'

      end
