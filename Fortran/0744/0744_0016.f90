      real*8::r1,r2

      r1=0.0d0
      r2=0.0d0
      call sub(r1,r2)
      print *,'pass'
      end

      subroutine sub(r1,r2)
      real*8::r1,r2

      j=0

      if (.not. (abs(r1/r2).gt.0.0d-00 .or. &
                 abs(r1/r2).ge.0.0e-00 .or. &
                 abs(r1/r2).lt.0.0q-00 .or. &
                 abs(r1/r2).le.0.0  )  ) then
        j=j+100
      else
        write(6,*) "NG"
      endif

      if (.not. (abs(r1/r2).gt.0.0d-00 .and. &
                 abs(r1/r2).ge.0.0e-00 .and. &
                 abs(r1/r2).lt.0.0q-00 .and. &
                 abs(r1/r2).le.0.0  )  ) then
        j=j+100
      else
        write(6,*) "NG"
      endif

      if (j/=200) write(6,*) "NG"

      end subroutine
