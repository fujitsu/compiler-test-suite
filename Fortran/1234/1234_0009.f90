   module mod
     type c
       integer:: nkext=2                       ! 3-1)
       integer,pointer:: np=>null()            ! 3-1)
       character(2),allocatable::nname         ! 3-2)
     end type
     type :: base
       integer:: kbase!!!!=1
     end type base
     type, extends(base) :: ext
       integer:: kext=2                       ! 3-1)
       integer,pointer:: p=>null()            ! 3-1)
       type(c)::vv
       character(2),allocatable::name         ! 3-2)
     end type ext
   end
   subroutine ss1()
   use mod
   class(base),allocatable :: var_aloc        ! 1-1-2)
   class(base),allocatable :: var_mold
 interface
   subroutine alc(var_aloc,var_mold)
   import
   class(base),allocatable :: var_aloc        ! 1-1-2)
   class(base),allocatable :: var_mold
   end subroutine
 end interface
 interface
   subroutine ref(d)
   use mod
   class(base):: d
   end subroutine
 end interface
   call alc(var_aloc,var_mold)
   call ref(var_aloc)
   end subroutine

   subroutine alc(var_aloc,var_mold)
   use mod
   class(base),allocatable :: var_aloc        ! 1-1-2)
   class(base),allocatable :: var_mold
   allocate(ext::var_mold)                    ! 2)
   allocate(var_aloc, mold=var_mold) ! 1-1-1), 1-1-2), 1-1-3), 2)
   end subroutine


   subroutine ss2(var)                        ! 1-2-1), 1-2-2)
   use mod
   class(base),intent(out) :: var             ! 1-2-2), 1-2-3), 1-2-4)
 interface
   subroutine ref(d)
   use mod
   class(base):: d
   end subroutine
 end interface
   call ref(var)
   end subroutine

   subroutine ref(d)
   use mod
   class(base):: d
   select type(d)
   type is(ext)
     !!!!!if (d%kbase/=1 ) print *,'error-0'
     if (d%kext/=2 ) print *,'error-1'       ! 4-1)
     if (associated(d%p)) print *,'error-2'  ! 4-2)
     if (allocated(d%name)) print *,'error-3'! 4-3)
     allocate(d%name)                        ! 4-4)
     if (d%vv%nkext/=2 ) print *,'error-11'       ! 4-1)
     if (associated(d%vv%np)) print *,'error-12'  ! 4-2)
     if (allocated(d%vv%nname)) print *,'error-13'! 4-3)
     allocate(d%vv%nname)                        ! 4-4)
   end select
   end subroutine

   subroutine sample
   use mod
 interface
   subroutine ss2(var)                        ! 1-2-1), 1-2-2)
   import
   class(base),intent(out) :: var             ! 1-2-2), 1-2-3), 1-2-4)
   end subroutine
 end interface
   type (ext) :: var  ! 2)

      call ss1()

      call ss2(var)
   end subroutine


      call set_dummy
      call sample
   print *,'sngg654t : pass'
   end


   subroutine set_dummy
   integer,allocatable::a(:)
   allocate(a(100),source=-1)
   write(11,*) a(1)
   end
