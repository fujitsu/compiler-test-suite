 module mod
 external ext_sub
 interface gen_sub
    subroutine another_ext_sub(dum_proc)
    interface
       subroutine dum_proc(arg)
       integer, intent(inout) :: arg
       end subroutine dum_proc
    end interface
    end subroutine
 end interface
 end module mod

 program whatever
 use mod
 call gen_sub(ext_sub)
 print *,'pass'
 end program whatever
    subroutine another_ext_sub(dum_proc)
    interface
       subroutine dum_proc(arg)
       integer, intent(inout) :: arg
       end subroutine dum_proc
    end interface
    call dum_proc(ii);if (ii/=1)write(6,*) "NG"
    end subroutine
      subroutine ext_sub(arg)
      integer, intent(inout) :: arg
      arg=1
      end subroutine 
