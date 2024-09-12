c
c ow=g1128
c
      call s1
      print *,'pass'
      stop
   1  k=1;call random_seed(put=(/k/))
      end
      subroutine s1
      call ss1
      call ss2
      call ss3
      return
 1    k=1
      call random_seed(put=(/k/))
      end
      subroutine ss1
      real x,y(10),x0,y0(10)
      call random_number(x)
      call random_number(y(1:size((/1,2,3,4,5,6,7,8,9,10/))))
      write(1,*) x,y;rewind 1
      end
      subroutine ss2
      real x,y(10),x0,y0(10)
      read(1,*) x0,y0
      end
      subroutine ss3
      call random_seed(size=k)
      call random_seed(put=(/1,(i,i=1,k),2/))
      end
      subroutine ss4
      call random_seed(put=(/1/))
      end
