       module m1
       type ty
       complex::tar(2)
       end type

       type(ty),protected,target::obj

       contains
       subroutine sub(ptr)
       real,pointer,intent(in) ::ptr(:)
       obj%tar=(2,3)
       if(any(ptr .ne. 3))print*,"101",ptr
       print*,"pass"
       end subroutine
       end module
     
       use m1
       call sub(obj%tar(:)%im)
      end
    

