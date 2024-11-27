type ty(k)
    integer,kind::k
    integer :: a
    end type

    type t1
    type(ty(2)) :: cmp
    end type

    type(t1)::obj[*]
    End

