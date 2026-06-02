   module mod
     type :: base
       integer:: kbase=1
     end type base
     type, extends(base) :: ext
       integer:: kext=2                       ! 3-1)
       integer,pointer:: p=>null()            ! 3-1)
       character(2),allocatable::name         ! 3-2)
     end type ext
   contains
   subroutine ss1()
   class(base),allocatable :: var_aloc        ! 1-1-2)
   class(base),allocatable :: var_mold
   allocate(ext::var_mold)                    ! 2)
   allocate(var_aloc, mold=var_mold) ! 1-1-1), 1-1-2), 1-1-3), 2)
   call ref(var_aloc)
   end subroutine

   subroutine ss2(var)                        ! 1-2-1), 1-2-2)
   class(base),intent(out) :: var             ! 1-2-2), 1-2-3), 1-2-4)
   call ref(var)
   end subroutine

   subroutine ref(d)
   class(base):: d
   select type(d)
   type is(ext)
     if (d%kbase/=1 ) print *,'error-0'
     if (d%kext/=2 ) print *,'error-1'       ! 4-1)
     if (associated(d%p)) print *,'error-2'  ! 4-2)
     if (allocated(d%name)) print *,'error-3'! 4-3)
     allocate(d%name)                        ! 4-4)
   end select
   end subroutine
   end module

   subroutine sample
   use mod
   type (ext) :: var  ! 2)

      call ss1()

      call ss2(var)
   end subroutine


      call set_dummy
      call sample
   print *,'sngg469t : pass'
   end


   subroutine set_dummy
   integer,allocatable::a(:)
   allocate(a(100),source=-1)
   write(14,*) a(1)
   end
