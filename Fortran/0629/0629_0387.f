      common a(80,80)
      a = 1

      pivm = 0
      do 202 i = 1,80
      wm = abs(a(i,1))
      if ((wm-pivm).gt.0) then
         pivm = wm
      endif
  202 continue
      print*, pivm
      end
