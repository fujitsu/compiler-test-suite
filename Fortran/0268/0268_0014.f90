subroutine sub()
         character(len=3),target,save:: tar1(2)='aaa'
         character(len=2),pointer:: ptr
         data ptr /tar1(1)(1:2)/
         if(associated(ptr).neqv..true.)print*,"102",associated(ptr)
         if(associated(ptr))then
         if(ptr.ne.'aa')print*,"101"
         endif
         print*,"PASS"
         end subroutine
         call sub()
        end
