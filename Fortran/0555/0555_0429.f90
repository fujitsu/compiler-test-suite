module m1
    type ty
        integer(kind=4) :: num
        integer(kind=4) :: num1
    end type

    type, extends(ty):: ty1
        integer(kind=8) :: num2
    end type

    type, extends(ty1):: ty2
        integer(kind=8) :: num3
    end type
end module
use m1
    TYPE con
        class(ty),allocatable::ptr(:)
    END TYPE

    INTERFACE OPERATOR(+)
    function pls(a,b)
        import ty1
        import ty
        import ty2

        type(ty1), pointer, intent(in) :: a(:)
        type(ty2), pointer, intent(in) :: b(:)
        type(ty1), pointer             :: pls(:)
    end function
    END INTERFACE operator(+)

    TYPE(con)::obj
    type(ty1),POINTER::pptr(:)
    type(ty2),POINTER::pptr1(:)
    allocate(pptr(3), pptr1(3))

    pptr%num = 1
    pptr1%num = 2
    obj = con(pptr + pptr1)
    if(sizeof(obj%ptr) .NE. 48) then
        print*,'Fail'
    else
        print*,'Pass'
    end if

END
 
function pls(a,b)
    use m1
    type(ty1), pointer, intent(in) :: a(:)
    type(ty2), pointer, intent(in) :: b(:)
    type(ty1), pointer :: pls(:)

    allocate(pls(3))
    pls%num = a%num + b%num
END function

