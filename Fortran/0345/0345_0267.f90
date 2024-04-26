      module mod
        integer::ii(10),jj(5),kk(5)
        equivalence(ii(6),jj(1))
        equivalence(ii(1),kk(1))
       contains
        subroutine sub()
          jj=jj+(/5,4,3,2,1/)
          kk=kk+(/10,9,8,7,6/)
        end subroutine
      end module

      program main
       use mod
        ii=(/(i,i=1,10)/)
        call sub()
        if (any(jj/=11)) then
          print *,'error'
          print *,'ii -> ',ii
        endif
        print *,'pass'
      end program
