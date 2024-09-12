
      program main
      character*10 c, ca(-1:1,2)

      print *,'//''(CHARACTER*10 POINTER)'' is OK !!'
      call flush(6)
      c = 'test 1'

      print *,'//''(CHARACTER*10 POINTER(-1:1,2)) is OK !!'
      call flush(6)
      ca(-1,1) = 'test 2'

      end
