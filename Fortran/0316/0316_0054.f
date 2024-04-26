
      common /com/ch
      character*3 ch
      if (ch.ne.'bcd') then
        print *,'?? NG ??'
        stop
      endif
      print *,'** OK **'
      end

      block data bk
      common /com/ch1,ch2
      character*0 ch1
      character*3 ch2
      data ch1,ch2 /'a','bcd'/
      data ch1 /'z'/
      end
