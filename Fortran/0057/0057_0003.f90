        integer :: act1=10
        integer :: act2=20
        integer :: act3=30
        integer :: act4=40
        integer :: re
        call s2 (act1,act2)
        re=f2(act3,act4)
        if(act1 .ne. 10)print*,"101"
        if(act2 .ne. 20)print*,"102"
        if(act3 .ne. 30)print*,"101"
        if(act4 .ne. 40)print*,"102"
        print*,"Pass"
        contains
        elemental subroutine s2(a1,a2)
        integer,intent(in)::a1
        VALUE :: a1
        integer,value:: a2
        INTENT(in) :: a2
        !a1=a2+10
        end subroutine
        elemental function f2(a3,a4)
        VALUE :: a3
        integer,intent(in)::a3
        INTENT(in):: a4
        integer,value::a4
        !a3=a4+30
        f2=a3
        end function
        end

