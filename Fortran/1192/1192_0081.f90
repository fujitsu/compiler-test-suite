     module mod
       type :: base
         type (ext),allocatable:: next
       end type

       type, extends(base) :: ext
         integer(8),allocatable:: num
       end type ext

     contains

       recursive subroutine s0(value,kp)
         class(base), intent(inout) :: value
         if (kp>20) return
         select type (value)
           type is(ext)
             allocate(value%num)
             value%num= kp
         end select
         kp=kp+1
         allocate(value%next)
         call s0(value%next,kp)
       end subroutine 

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1

       recursive subroutine s2(value,kp)
         class(base), intent(inout) :: value
         select type (value)
           type is(ext)
             if (value%num/=kp) print *,3001,value%num,kp
         end select
         kp=kp+1
         if (kp>20) return
         call s2(value%next,kp)
       end subroutine 
     end module mod

     subroutine s
     use mod
     class(base), allocatable,target :: var
     type(ext),target :: value
     class(base), pointer :: p
     kp=1
     call s0(value,kp)
     call s1(var, value) 
     
     p=>var
     do nn=1,19
     select type(p)
     type is(ext)
       p%num    =-1  
     end select
     p=>p%next
     end do

     kp=1
     call s2(value,kp)
     deallocate(value%next)
     deallocate(var  )
     end
     call s
     print *,'sngg274p : pass'
     end 

