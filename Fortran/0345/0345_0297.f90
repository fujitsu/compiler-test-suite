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
      end module

      module m1
       use m
       type(y)::y0 = y( 10 , z(1,1.0,(1.0,-1.0),'ABC',null()) )
       type(y)::y1
       contains
        subroutine sub()
          y1=y0 
        end subroutine
      end module

      program main
       use m1
        call sub()
        if (y1%ii/=10) print *,'error1'
        if (y1%z%ii/=1) print *,'error2'
        if (y1%z%rr/=1.0) print *,'error3'
        if (y1%z%cc/=(1.0,-1.0)) print *,'error4'
        if (y1%z%hh/='ABC') print *,'error5'
        if (associated(y1%z%pp)) print *,'error6'
        print *,'pass'
      end program
