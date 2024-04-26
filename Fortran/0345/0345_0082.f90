      module mod1
        integer(4),dimension(10)::a=(/0,1,1,1,1,1,1,1,1,1/)
        integer(4),dimension(10)::b=(/1,2,3,4,5,6,7,8,9,10/)
        integer(4)::ir
      contains
        elemental function ifunc(ia,ib,jr) result(ir)
         intent(in)::ia,ib,jr
          ir=0
          if (ia==1) then
            ir=ir+ib
          else
            ir=0
          endif
        end function
      end module

      program main
       use mod1
        integer,dimension(10)::kk=0
        ir=100
        kk=ifunc(a,b,jr)
        if (any(kk/=(/0,2,3,4,5,6,7,8,9,10/))) print *,kk
        print *,'pass'
      end program
