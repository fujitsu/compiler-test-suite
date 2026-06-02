      if(MAXLOC ([9, 5, 3], DIM = 1,back=.true.) /= 1) print*,"121"
      if(MAXLOC ([9, 5, 3], DIM = 1,back=.false.) /= 1) print*,"122"
      if(MINLOC ([9, 5, 3], DIM = 1,back=.true.) /= 3) print*,"221"
      if(MINLOC ([9, 5, 3], DIM = 1,back=.false.) /= 3) print*,"222"
      if(findloc([5, 3, 3], 3, DIM = 1,back=.true.) /= 3) print*,"321"
      if(findloc([5, 3, 3], 3, DIM = 1,back=.false.) /= 2) print*,"322"
      print*,"pass"
      end
