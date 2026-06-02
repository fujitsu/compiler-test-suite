subroutine sub()
         character(len=3),target,save:: tar1(2)='abc'
         character(len=2),pointer:: ptr
         character(len=2):: str1
         data ptr,str1 /tar1(1)(1:2),'cdf'(1:2)/
         if(associated(ptr).neqv..true.)print*,"103",associated(ptr)
         if(associated(ptr))then
         if(ptr.ne.'ab')print*,"101"
         endif
         if(str1.ne."cd")print*,"103",str1
         print*,"Pass"
         end subroutine
         call sub()
        end

