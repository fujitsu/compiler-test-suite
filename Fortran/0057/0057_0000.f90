        type ty
        integer :: act1(2)=10
        integer :: act2(2)=20
        end type
        type(ty) :: obj
        call s2 (obj%act1,obj%act2)
        if(any(obj%act1 .ne. 30))print*,"101"
        if(any(obj%act2 .ne. 20))print*,"102"
        print*,"Pass"
        contains
        pure      subroutine s2(a1,a2)
        integer,intent(out)::a1(2)
        integer,value:: a2(2)
        a1=a2+10
        end subroutine
        end
