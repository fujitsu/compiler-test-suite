     module mod
       type :: b
          character(:),allocatable::name
       end type
       type :: base
          type (b),allocatable::bv3
       end type base
       class (*   ), allocatable :: var

     contains

       subroutine s1(value)
         class (*   ), intent(in) :: value
kk=1
         allocate(var, source=value,stat=kk)
if (kk/=0) print *,601
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(base), allocatable :: value
     allocate(value)
     allocate(b::value%bv3)
       allocate(value%bv3%name,source='ok')
     call s1(value) 
     select type(var)
     type is(base)
       var%bv3%name(:)='11'
     end select
     if (value%bv3 %name(:)/='ok') print *,1003
end
call s
     print *,'sngg434q : pass'
     end program

