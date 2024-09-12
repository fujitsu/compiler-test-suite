program main

    type con
        integer (kind=8) :: i
        class(*), pointer :: ulimClassPtr
    end type

    type(con) :: objCon

    objCon = con(5, NULL())
    if(objcon%i .NE. 5) then
        print*,'Fail'
    else
        print*,'Pass'
    end if
end program
