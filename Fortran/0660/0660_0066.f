      program main
      common/com1/icom
      icom=1
      i=1
      call sub1(i)   
      call sub2(i)   
      if (i.ne.12) print *,'err' ,i              
      print *,'pass'
      end

      recursive subroutine sub1(i)
      j=max(10,i)
      if (j.eq.10) call sub2(i)
      end

      recursive subroutine sub2(i)
      call sub3(i)
      call suba1()
      end

      recursive subroutine sub3(i)
      j=i+100
      if (i.eq.3) call sub2(j)
      call sub4(i)
      end

      recursive subroutine suba1()
      common /com1/ i
      call sub1(i+10)
      end
      recursive subroutine sub4(i)
      i=i+1
      call sub1(i)
      end
