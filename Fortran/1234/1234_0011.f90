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
   subroutine ss2(var)
   entry      ss1(var)
   class(base),intent(out) :: var(:,:)
   call ref(var)
   end subroutine

   subroutine ref(d)
   class(base):: d (:,:)
   do n2=1,size(d,2)
   do n1=1,size(d,1)
   select type(d)
   type is(ext)
     if (d(n1,n2)%kbase/=1 ) print *,'error-0'
     if (d(n1,n2)%kext/=2 ) print *,'error-1'       ! 4-1)
     if (associated(d(n1,n2)%p)) print *,'error-2'  ! 4-2)
     if (allocated(d(n1,n2)%name)) print *,'error-3'! 4-3)
     allocate(d(n1,n2)%name)                        ! 4-4)
   end select
   end do
   end do
   end subroutine
   end module

   subroutine sample
   use mod
   type (ext) :: var(2,3)  ! 2)
      call ss1(var)
      call ss2(var)
   end subroutine

      call set_dummy
      call sample
   print *,'sngg656t : pass'
   end

   subroutine set_dummy
   integer,allocatable::a(:)
   allocate(a(100),source=-1)
   write(13,*) a(1)
   end
