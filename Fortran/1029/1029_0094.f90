      i=2
      j=2
      if (i.eq.2 .and. j.eq.2) then
        if (i.eq.2 .and. j.eq.2) goto  100
        write(6,*) "NG"
  100   continue
      else
        write(6,*) "NG"
      endif
      if (.not.i.ne.2 .and. .not.j.ne.2) then
        if (.not.i.ne.2 .and. .not.j.ne.2) goto  200
        write(6,*) "NG"
  200   continue
      else
        write(6,*) "NG"
      endif
      print *,'pass'
      end
