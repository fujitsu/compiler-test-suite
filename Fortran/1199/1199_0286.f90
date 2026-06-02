     module mod
       type :: base
          character(:),allocatable::name
       end type base
       class (*   ), allocatable :: var

     contains

       subroutine s1(value)
         class (base), intent(in) :: value
         var=value
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(base), allocatable :: value
     allocate(value)
       allocate(value%name,source='ok')
     call s1(value) 
     select type(var)
     type is(base)
       var%name(:)='11'
     end select
     if (value%name(:)/='ok') print *,1003
end
call s
     print *,'sngg438q : pass'
     end program

