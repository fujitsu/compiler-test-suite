      real*8:: r1,r2,r3,r4

      r1=1.0q0
      r2=1.0q0
      r3=1.0q0
      r4=1.0q0
      call sub(r1,r2,r3,r4)
      print *,'pass'
      end

      subroutine sub(r1,r2,r3,r4)
      real*8:: r1,r2,r3,r4

      j=0

      if (abs((r1-r2)/(r2-r3)) .lt. abs((r3-r4)/(r3-r2)) .or. &
          abs((r1-r2)/(r2-r3)) .gt. abs((r3-r4)/(r3-r2))) then
        write(6,*) "NG"
      else
        j=j+1
      endif

      if (.not.(abs((r1-r2)/(r2-r3)) .ge. abs((r3-r4)/(r3-r2))) .and. &
          .not.(abs((r1-r2)/(r2-r3)) .le. abs((r3-r4)/(r3-r2)))) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (r1/=r2.or.j/=2.or.r3/=r4) then
        write(6,*) "NG"
      endif

      end
