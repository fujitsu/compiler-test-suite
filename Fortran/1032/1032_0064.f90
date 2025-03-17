      if (.true.) then
         assign 110 to i
      else
         assign 200 to i
      endif
      goto i(110,200)
 100  stop "OK"
 110  print *,'pass'
      stop
 200  stop "ERR"
      end
