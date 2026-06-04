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
     select type(var_2)
     type is(ext)
       if (var_2%kbase/=1 ) print *,1000
       if (var_2%kext/=2 ) print *,1001         ! 7-1)
       if (associated(var_2%p)) print *,1002    ! 7-2)
       if (allocated(var_2%name)) print *,1003  ! 7-3)
       allocate(var_2%name,source='1')          ! 7-4)
     end select
     end subroutine

     subroutine ss2(var)
     class(base),intent(out) :: var
     select type(var)
     type is(ext)
       if (var%kbase/=1 ) print *,2000
       if (var%kext/=2 ) print *,2001
       if (associated(var%p)) print *,2002
       if (allocated(var%name)) print *,2003
       allocate(var%name,source='2')
     end select
     end subroutine
     end module

     subroutine sample
     use mod
     type (ext) :: var

        !!call ss1()

        call ss2(var)
     end subroutine


        call set_dummy
        call sample
     print *,'sngg468t : pass'
     end


     subroutine set_dummy
     integer,allocatable::a(:)
     allocate(a(100),source=-1)
     write(13,*) a(1)
     end
