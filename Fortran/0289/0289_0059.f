      integer a(10),b(10),c(10)
      data c/10*0/
      call sub(a,b,c,*99998,*99999,10)
      print *,'*** not found "eof" ***'
   10 write(6,*,err=11) a
   11 write(6,*,err=12) b
   12 write(*,*,err=13) c
   13 stop
99998 print *,'*** error ***'
      stop
99999 print *,'*** end of record ***'
      go to 10
      end
      subroutine sub(a,b,c,*,*,n)
      integer a(n),b(n),c(n)
      read(5,100,end=99999,err=99998)
     1    (a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(4i5)
      read(5,100,end=200,err=200) (a(i),i=1,n)
  200 continue
      return
99998 return 1
99999 return 2
      end
