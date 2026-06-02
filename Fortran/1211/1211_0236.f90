     module mod
       type :: base
          character(:),allocatable::name 
       end type base

       type, extends(base) :: ext       
          character(:),allocatable::name2 
       end type ext

     type t
       class(base),allocatable::x
     end type
contains
subroutine s(var,value)
     type ( t ), allocatable :: var 
     class(base), allocatable :: value 
     var=t(value)  !!!!!
end
end
     use mod
     class(base), allocatable :: value 
     type(t),allocatable::var
     allocate(var)
     allocate(ext::value)
     allocate(value%name,source='11')
  select type (value)
    type is(ext)
     allocate(value%name2,source='22')
  end select
     call s(var,value)

     print *,'sngg866r : pass'
     end program

