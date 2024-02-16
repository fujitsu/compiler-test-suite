       module m1
       complex,protected,target::tar(2)

       contains
       subroutine sub(ptr)
       real,pointer,intent(in) ::ptr(:)
       tar=(2,3)
       if(any(ptr .ne. 3))print*,"101",ptr
       print*,"pass"
       end subroutine
       end module
     
       use m1
       call sub(tar(:)%im)
      end
    

