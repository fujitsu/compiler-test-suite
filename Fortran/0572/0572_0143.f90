module m1
        real, parameter::    rr(7) =(/3.25,65.45,12.15,95.25,35.35,45.55,89.0/)
        integer :: r1(1) = FINDLOC(rr,VALUE=5,KIND=8,MASK=rr>3.15_8)
        integer :: r2(1) = FINDLOC(rr,VALUE=5.0,KIND=8,MASK=rr>3.15_8)
        integer :: r3(1) = FINDLOC(rr,VALUE=(5.0,5.0),KIND=8,MASK=rr>3.15_8)

        end module

        program main
        use m1
        
        if (r1(1)/=0) print *, 101,r1
        if (r2(1)/=0) print *, 102
        if (r3(1)/=0) print *, 103
        print *, "pass"
 end

