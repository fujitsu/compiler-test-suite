integer :: obj
obj= 13
    call sub(obj)
contains

subroutine sub(obj)

    class(*),target  :: obj
    call sub2(obj)

end subroutine sub

                
                
subroutine sub2(kk)
                class(*),pointer,intent(in)  :: kk


                select type(kk)
                type is(integer)
                if(kk .ne. 13) print*,101
                print*,"PASS"
                    end select
end subroutine sub2

end 

