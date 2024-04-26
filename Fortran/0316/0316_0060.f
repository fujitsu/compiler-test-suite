
      character*2 cha(2,2)
      character*2 chb
      data cha(1,1:2:-1)(2:1),chb /'bb'/

      call check(chb,'bb')
      print *,'** OK **'
      end

      subroutine check(ch,tch)
      character*(*) ch,tch
      if (ch.ne.tch) then
         print *,'?? NG ??'
         stop
      endif
      end
