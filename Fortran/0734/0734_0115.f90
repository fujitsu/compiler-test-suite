      integer b(5:5),k3/3/
      write(12,*)100;rewind 12
      read (12 ,*)   b(sum((/(i,i=2,k3)/)))
      if (b(5)/=100)write(6,*) "NG"
      read(12,*,end=10) i
      write(6,*) "NG"
10    print *,'pass'
      end
