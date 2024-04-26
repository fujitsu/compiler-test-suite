      program main
      common /com/r
      common /comi/i
      r = 0
      i = 0
      call sub2()
      call sub3()
      call sub5()
      call sub6()
      if( i .eq. 5 .and. r .eq. 5.0 ) then
	print *, ' OK '
      else 
        print *, ' NG ',i,r
      endif
      end

      subroutine sub1()
      common /comi/i
      i=i+1
      end

      subroutine sub2()
      common /comi/i
      i=i+1
      i=i+1
      end

      subroutine sub3()
      common /comi/i
      i=i+1
      call sub1()
      i=i+1
      end

      subroutine sub4()
      common /com/r
      r=r+1
      end

      subroutine sub5()
      common /com/r
      r=r+1
      r=r+1
      end

      subroutine sub6()
      common /com/r
      r=r+1
      call sub4()
      r=r+1
      end
