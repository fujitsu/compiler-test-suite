   module mod
       type :: base
       end type base
       type, extends(base) :: ext
         integer:: kkk=1                        ! 6-1)
         integer,pointer:: p=>null()            ! 6-1)
         character(:),allocatable::name         ! 6-2)
       end type ext

     contains
     subroutine ss()
     class(base),allocatable :: var_1 ! 4)
     class(base),allocatable :: var_2 ! 3)

     allocate(ext::var_1)                       ! 5)

     allocate(var_2, mold=var_1)                ! 1), 2), 3), 4), 5)
     select type(var_2)
     type is(ext)
       if (var_2%kkk/=1 ) print *,2002          ! 7-1)
       if (associated(var_2%p)) print *,2003    ! 7-2)
       if (allocated(var_2%name)) print *,2004  ! 7-3)
       allocate(var_2%name,source='1')          ! 7-4)
     end select


     end subroutine
     end module

     program main
     use mod
        call set_dummy

        call ss()



     print *,'sngg460t : pass'
     end program


     subroutine set_dummy
     integer,allocatable::a(:)
     allocate(a(100),source=-1)
     write(7,*) a(1)
     end
