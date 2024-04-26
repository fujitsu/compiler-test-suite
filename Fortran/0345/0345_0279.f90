      module mod0
        integer::ii(10),jj(5),kk(5)
        equivalence(ii(6),jj(1))
        equivalence(ii(1),kk(1))
       contains
        subroutine sub0(ii,n)
         integer::ii(n)
          ii=(/(i,i=1,n)/)
        end subroutine 
      end module

      module mod1
       use mod0
       contains
        subroutine sub()
          call sub0(ii,10)
          jj=jj+(/5,4,3,2,1/)
          kk=kk+(/10,9,8,7,6/)
        end subroutine
      end module

      program main
       use mod1
        call sub()
        if (any(jj/=11)) then
          print *,'error'
          print *,'ii -> ',ii
        endif
        print *,'pass'
      end program
