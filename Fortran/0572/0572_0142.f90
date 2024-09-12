module m1
integer,parameter :: ii(9) = (/1,2,3,4,5,6,7,8,9/)

        integer :: i1(1) = FINDLOC(ii,VALUE=5,KIND=8,MASK=ii>3)
        integer :: i2(1) = FINDLOC(ii,VALUE=5.0,KIND=8,MASK=ii>3.15_8)
        integer :: i3(1) = FINDLOC(ii,VALUE=(5.0,5.0),KIND=8,MASK=ii>3.15_8)
end module
        program main
        use m1
        if (i1(1)/=5) print *, 101
        if (i2(1)/=5) print *, 102
        if (i3(1)/=0) print *, 103
        print *, "pass"
        end

