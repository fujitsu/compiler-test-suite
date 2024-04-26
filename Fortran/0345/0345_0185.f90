    module mod2
      contains
      subroutine subsubsub(jj,kk)
        kk=jj*10
      end subroutine 
    end module

    module mod1
     use mod2
     contains
      subroutine subsub(ii,kk)
        jj=ii+2
        call subsubsub(jj,kk)
      end subroutine
    end module

    program ompv2
      i=10
      call sub(i)
      print *,'pass'
    end program

    subroutine sub(i)
     use mod1
     use mod2
      do ii=1,i
        call subsub(ii,kk)
        select case (ii)
          case (1)
            if (kk/=30) print *,'error1'
          case (2)
            if (kk/=40) print *,'error2'
          case (3)
            if (kk/=50) print *,'error3'
          case (4)
            if (kk/=60) print *,'error4'
          case (5)
            if (kk/=70) print *,'error5'
          case (6)
            if (kk/=80) print *,'error6'
          case (7)
            if (kk/=90) print *,'error7'
          case (8)
            if (kk/=100) print *,'error8'
          case (9)
            if (kk/=110) print *,'error9'
          case (10)
            if (kk/=120) print *,'error10'
        end select
      enddo
    end subroutine sub
