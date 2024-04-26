      print *,'ASSIGN TEST'
      if (.true.) then
         assign 100 to i
      else
         assign 200 to i
      endif
      goto i(110,200)
 100  stop "OK"
 110  stop "OK"
 200  stop "ERR"
      end
