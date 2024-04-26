      module mod
        integer::ii(5),jj(5)
        equivalence(ii(1),jj(1))
       contains
        subroutine sub()
          jj=(/2,4,6,8,10/)
          ii=ii+(/8,6,4,2,0/)
        end subroutine
      end module

      program main
       use mod
        call sub()
        if (any(jj/=10).or.any(ii/=10)) then
          print *,'error'
          print *,'ii -> ',ii
          print *,'jj -> ',jj
        endif
        print *,'pass'
      end program
