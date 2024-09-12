integer,target :: ii(2)
             ii= [12,13]
call sub(ii)
    

    contains  
    subroutine sub(jj)
    integer,pointer,intent(in) :: jj(:)

    if(all(jj .ne. [12,13]))print*,101
    print*,"PASS"


    end subroutine sub

    end



