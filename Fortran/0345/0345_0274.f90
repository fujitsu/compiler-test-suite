      module mod
        integer::ii(10),jj(5),kk(5)
        equivalence(ii(6),jj(1))
        equivalence(ii(1),kk(1))
      end module

      subroutine sub()
       use mod
        ii=(/(i,i=1,10)/)
        jj=jj+(/5,4,3,2,1/)
      end subroutine

      program main
       use mod
        call sub()
        kk=kk+(/10,9,8,7,6/)
        if (any(jj/=11)) then
          print *,'error'
          print *,'ii -> ',ii
        endif
        print *,'pass'
      end program
