module obj_mod

    type obj_type
        procedure(sub_interface), pointer, nopass :: obj_sub => NULL()
    end type
    procedure(sub_interface), pointer :: obj_subptr => sq_sub
    procedure(sub_interface), pointer :: obj_subptr2 => exp_sub

    interface
        subroutine sub_interface(y, x)
            real:: x, y
        end subroutine sub_interface
    end interface

contains 
    subroutine sq_sub(x, y)
        real:: x, y
        y = x ** 2
        print*,"PASS"
    end subroutine

    subroutine exp_sub(x, y)
      real:: x, y
        y = exp(x)
        print*,"PASS"
    end subroutine

end module 

program member_subroutine
    use obj_mod
      real:: x, y
    type ty2
     procedure(sub_interface), pointer,NOPASS :: obj_subptr => sq_sub
     procedure(sub_interface), pointer,NOPASS :: obj_subptr2 => exp_sub
    end type
    type(obj_type) obj
    type(ty2) obj2
     x=30
    y=40
    obj%obj_sub => sq_sub
    call obj%obj_sub(x, y)

    obj%obj_sub => exp_sub
    call obj_subptr(x, y)
    call obj_subptr2(x, y)
    call obj2%obj_subptr(x, y)
    call obj2%obj_subptr2(x, y)
    print*,"PASS"
end program member_subroutine

