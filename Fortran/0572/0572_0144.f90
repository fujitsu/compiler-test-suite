module m1
        complex, parameter::cmp(7) =(/(3,3),(65,65),(12,0),(95,95),(35,35),(45,45),(89,89)/)
        real, parameter::    rr(7) =(/3.25,65.45,12.15,95.25,35.35,45.55,89.0/)

        integer :: c1(1) = FINDLOC(cmp,VALUE=5,KIND=8,MASK=rr>3)
        integer :: c2(1) = FINDLOC(cmp,VALUE=12.0,KIND=8,MASK=rr>3.15_8)
        integer :: c3(1) = FINDLOC(cmp,VALUE=(5.0,5.0),KIND=8,MASK=rr>3)
        end module

        program main
        use m1

              if (c1(1)/=0) print *, 101
              if (c2(1)/=3) print *, 102
              if (c3(1)/=0) print *, 103
              print *, "pass"

        end

