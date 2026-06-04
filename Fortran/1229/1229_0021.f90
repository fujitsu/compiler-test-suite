     module mod
       type :: base
         integer:: kbase=1
       end type base
       type, extends(base) :: ext
         integer:: kext=2                       ! 4-1)
         integer,pointer:: p=>null()            ! 4-1)
         character(:),allocatable::name         ! 4-2)
       end type ext
     contains
     subroutine ss1()
     class(base),allocatable :: var_1 ! 4)
     class(base),allocatable :: var_2 ! 3)
     allocate(ext::var_1)                       ! 5)
     allocate(var_2, mold=var_1)                ! 1), 2), 3), 4), 5)
     call ref(var_2)
     end subroutine

     subroutine ss2(var)
     class(base),intent(out) :: var
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
       allocate(d%name,source='2')             ! 4-4)
     end select
     end subroutine
     end module

     subroutine sample
     use mod
     type (ext) :: var

        ! call ss1()

        call ss2(var)
     end subroutine


        call set_dummy
        call sample
     print *,'sngg470t : pass'
     end


     subroutine set_dummy
     integer,allocatable::a(:)
     allocate(a(100),source=-1)
     write(15,*) a(1)
     end
