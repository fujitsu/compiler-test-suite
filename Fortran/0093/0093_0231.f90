       type ty
       complex :: c(4)
       end type
       type(ty) :: obj
       obj%c=(3,5)
       call sub(obj%c(2:3)%im)
       contains
       subroutine sub(dmy)
       real,volatile :: dmy(:)
       if(any(dmy .ne. 5))print*,"101",dmy
       print*,"pass"
       end subroutine
       end
    

