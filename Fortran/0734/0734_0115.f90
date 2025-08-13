      integer b(5:5),k3/3/
      write(58,*)100;rewind 58
      read (58 ,*)   b(sum((/(i,i=2,k3)/)))
      if (b(5)/=100)write(6,*) "NG"
      read(58,*,end=10) i
      write(6,*) "NG"
10    print *,'pass'
      end
