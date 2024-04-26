      module m
        type z
         sequence
          integer(4)::ii
          real   (4)::rr
          complex(4)::cc
          character(3)::hh
          integer(4),pointer::pp
        end type
        type y
         sequence
          integer(4)::ii
          type(z)   ::z
        end type
        type(y)::y1(3)
      end module

      module m0
        integer(4),parameter::ip=1
        real   (4),parameter::rp=1.0
        complex(4),parameter::cp=(1.0,-1.0)
        character(3),parameter::hp='ABC'
      end module

      module m1
       use m
       use m0
       type(y)::y0 = y( ip*10 , z(ip,rp,cp,hp,null()) )
       contains
        subroutine sub0(n)
          do i=1,n
            y1(i)=y0
          enddo
        end subroutine
      end module

      module m2
       use m
       use m0
       contains
        subroutine sub1(n)
          do i=1,n
            if (y1(i)%ii/=10) print *,'error1'
            if (y1(i)%z%ii/=1) print *,'error2'
            if (y1(i)%z%rr/=1.0) print *,'error3'
            if (y1(i)%z%cc/=(1.0,-1.0)) print *,'error4'
            if (y1(i)%z%hh/='ABC') print *,'error5'
            if (associated(y1(i)%z%pp)) print *,'error6'
          enddo
        end subroutine
      end module

      program main
       use m1
       use m2
        call sub0(3)
        call sub1(1+2)
        print *,'pass'
      end program
