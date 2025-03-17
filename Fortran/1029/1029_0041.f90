      logical :: l

      l=.true.
      if (.not.l .or. .not.l) then
         write(6,*) "NG"
      endif

      l=.false.
      if (.not.(.not.l).or..not.(.not.l)) then
         write(6,*) "NG"
      endif

      l=.true.
      if (.not.(.not.(.not.l))) then
         write(6,*) "NG"
      endif
      if ((.not.(.not.(.not.l))) .or. (.not.(.not.(.not.l))) ) then
         write(6,*) "NG"
      endif

      print *,'pass'

      end
