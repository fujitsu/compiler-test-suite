     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       character(10000),parameter:: name_value='1'
     contains
     subroutine ss
     class(base), allocatable :: var
     allocate(ext:: var)
     select type(var)
     type is(ext)
       allocate(var%name,source=name_value)
       !   write(1,'(z16.16)') loc(var%name)
     end select

     select type(p=>var)
     type is(ext)
        !  deallocate( var%name )
     end select
     deallocate( var )
     end subroutine
     end module
    
     program main
     use mod
     do n=1,30
        call ss
     end do



     print *,'sngg441t : pass'
     end program

