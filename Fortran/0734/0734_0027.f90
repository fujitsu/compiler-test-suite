      pointer(k,i)
      integer*8 i,ifun,ii
      k=loc(ii)
      i=ifun()
      write(27,*)i
      rewind 27
      read(27,*) iii
      if (iii/=1)print *,'error'
      print *,'pass'
      end
      integer*8 function ifun()
      ifun=1
      end function
