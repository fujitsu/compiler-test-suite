      real*8     a(5),b(5),c(5),ans(5)
      data       a/1.23d0,1.26d0,1.29d0,1.32d0,1.35d0/
      do 30 i = 1,5
          b(i) = dcos(a(i))
   30 continue
      call sub1(a,c)
      do 50 i = 1,5
          ans(i) = b(i) - c(i)
            if(ans(i).ne.0.0d0) then
            write(6,*)i,a(i),ans(i)
	    write(6,1)b(i)
	    write(6,1)c(i)
1     format(1h ,z16.16)
            endif
   50 continue
      print *,'PASS'
      stop
      end
      subroutine sub1(a1,c1)
      real*8 a1(5),c1(5)
      do 70 i = 1,5
          c1(i) = dcos(a1(i))
   70 continue
      return
      end
