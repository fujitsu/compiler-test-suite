      program main
      i=1
      call sub1(i)   
      if (i.ne.11) print *,'err' ,i              
      print *,'pass'
      end

      subroutine sub1(i)
      j=max(10,i)
      if (j.eq.10) call sub2(i)
      end
      subroutine sub2(i)
      i=i+1
      call sub1(i)
      end
