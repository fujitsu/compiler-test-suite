  subroutine sub()
         character(len=3),target:: tar1='abc'
         character(len=2),pointer:: ptr
         data ptr /tar1(1:2)/
         if(ptr.ne.'ab')print*,"101"
         end subroutine
         call sub()
         print*,"pass"
       end
