     module mod
       type :: base
         class(*),allocatable:: next
       end type

       type, extends(base) :: ext
         integer(8),allocatable:: num
       end type ext

     contains

       recursive subroutine s0(value,kp)
         class(*), intent(inout) :: value
         if (kp>20) return
         select type (value)
           type is(ext)
             allocate(value%num)
             value%num= kp
             kp=kp+1
             allocate(ext::value%next)
             call s00(value%next,kp)
         end select
       end subroutine 
       recursive subroutine s00(value,kp)
         class(*), intent(inout) :: value
         if (kp>20) return
         select type (value)
           type is(ext)
             allocate(value%num)
             value%num= kp
             kp=kp+1
             allocate(ext::value%next)
             call s0(value%next,kp)
         end select
       end subroutine 

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1

       recursive subroutine s2(value,kp)
         class(*   ), intent(inout) :: value
         select type (value)
           type is(ext)
             if (value%num/=kp) print *,3001,value%num,kp
             kp=kp+1
             if (kp>20) return
             call s22(value%next,kp)
         end select
       end subroutine 
       recursive subroutine s22(value,kp)
         class(*   ), intent(inout) :: value
         select type (value)
           type is(ext)
             if (value%num/=kp) print *,3001,value%num,kp
             kp=kp+1
             if (kp>20) return
             call s2(value%next,kp)
         end select
       end subroutine 

       recursive subroutine s3(var,kp)
         class(base ), intent(inout) :: var
         select type (var)
           type is(ext)
             if (var%num/=kp) print *,4001,var%num,kp
             var%num=-1
             kp=kp+1
             if (kp>20) return
             call s2(var%next,kp)
         end select
       end subroutine 
     end module mod

     subroutine s
     use mod
     class(base), allocatable,target :: var
     type(ext),target :: value
     kp=1
     call s0(value,kp)
     call s1(var, value) 
     
     kp=1
     call s3(var,kp)

     kp=1
     call s2(value,kp)
     deallocate(value%next)
     deallocate(var  )
     end
     call s
     print *,'sngg275p : pass'
     end 

