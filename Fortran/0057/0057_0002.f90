        Module m
        type ty
        integer :: ii(3)=5
        end type
        end module

        use m
        integer :: act1=10
        integer :: act2=20
        type(ty) :: obj
        call s2 (act1,act2)
        call s3 (obj%ii(1),obj%ii(2))
        if(act1 .ne. 10)print*,"101"
        if(act2 .ne. 20)print*,"102"
        if(obj%ii(1) .ne. 15)print*,"103"
        print*,"Pass"
        contains
        elemental subroutine s2(a1,a2)
        integer,value::a1
        integer,value:: a2
        a1=a2+10
        end subroutine
        elemental subroutine s3(a3,a4)
        integer,intent(out)::a3
        integer,value:: a4
        a3=a4+10
        end subroutine
        end
