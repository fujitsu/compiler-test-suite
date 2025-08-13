      integer*4 a
      integer*8 i,ifun,jj
      common a,i
      j=ifun()
      write(13,*)j
      rewind 13
      read(13,*) iii
      if (iii/=1)print *,'error'
      print *,'pass'
      end
      integer*8 function ifun()
      ifun=1
      end function
