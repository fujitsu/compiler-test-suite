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
     allocate(ext::value)
     allocate(value%name,source='11')
  select type (value)
    type is(ext)
     allocate(value%name2,source='22')
  end select
     call s(var,value)

     if (var%x%name/='11') print *,8001
     if (value%name/='11') print *,8011
  select type (value)
    type is(ext)
     if (value%name2/='22') print *,8012
     k=1
  end select
  if (k/=1) print *,1002
  k=0
     if (loc(var%x%name)==loc(value%name)) print *,8100
  select type (w=>var%x)
    type is(ext)
     if (w    %name2/='22') print *,8002
     select type (value)
       type is(ext)
         if (loc(w    %name2)==loc(value%name2)) print *,8200
         k=1
     end select
  end select
  if (k/=1) print *,1001
     print *,'sngg180p : pass'
     end program

