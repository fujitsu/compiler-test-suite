        module PFL_Config
           implicit none
           type :: AbstractLock
           end type AbstractLock
           contains
             subroutine build_locks()
               call locksinsert(build_lock())
             end subroutine build_locks
             type (AbstractLock) function build_lock()
             if (1.eq.2) build_lock = AbstractLock()
             end function build_lock
        end
           use PFL_Config
           call build_locks()
        end
        subroutine locksinsert(func)
           use PFL_Config
           type (AbstractLock) func
           print *,"pass"
        end
