      dimension  r1dim1(100),r1dim2(100)
      write(6,*) '                  **'
      r1dim1(5)=322.256
      r1dim1(6)=139.762
      r1dim1(7)=111.291
      r1dim1(8)=236.726
      r1dim1(9)=453.329
      rewind  4
      write(4) r1dim1(5)
      write(4) r1dim1(6)
      write(4) r1dim1(7)
      backspace  4
      backspace  4
      read(4) r1dim2(20)
      write(4) r1dim1(8)
      write(4) r1dim1(9)
      backspace  4
      endfile  4
      rewind 4
      read(4) r1dim2(20)
      read(4) r1dim2(20)
      read(4) r1dim2(20)
      read(4,end=92) r1dim2(20)
      write(6,100)
  100 format(1h ,'        test  abnormal')
      go to 110
   92 write(6,200)
  200 format(1h ,'        test normal end')
  110 stop
      end
