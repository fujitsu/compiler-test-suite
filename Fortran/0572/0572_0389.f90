integer::a,i
integer,pointer,contiguous::arr(:,:)
integer,target::br(2,2)
        arr=>br
i=func(a,arr)
if(i /= 1 )print*,201        
contains
 function func(b,brr)
    integer::b(..),brr(..)
    func =1
    call sub(brr)
    if(is_contiguous(b) .neqv. .TRUE. )print*,101
    if(is_contiguous(brr) .neqv. .TRUE. )print*,102
     print*,'PASS'
    end function

    subroutine sub(c)
    integer::c(..)
    if(is_contiguous(c) .neqv. .TRUE. )print*,103
    end subroutine    
 end
