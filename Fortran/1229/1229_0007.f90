     module mod
       type :: base
       end type base
       type, extends(base) :: ext
         character(:),allocatable::name     ! 3)
       end type ext

       character(1000),parameter:: name_value='1'
     contains
     subroutine ss                          ! 1-2-1)
     class(base), allocatable :: var        ! 1-2-2), 1-2-3), 1-2-4)
     allocate(ext:: var)                    ! 2)
     select type(var)
     type is(ext)
       allocate(var%name,source=name_value) ! 4)
     end select

     !select type(var)
     !type is(ext)
     !  deallocate( var%name )
     !end select
     deallocate( var )                      ! 1-1-1), 1-1-2)
     end subroutine                         ! 1-2-5)
     end module
    
     program main
     use mod
        call ss



     print *,'sngg456t : pass'
     end program

