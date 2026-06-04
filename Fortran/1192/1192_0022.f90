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
subroutine s(value)
     class(base), allocatable :: value 
     call w(t(value),value) !!!!!!
end
subroutine w(var,value)
     type ( t ) :: var 
     class(base), allocatable :: value 
     if (var%x%name/='11') print *,8001
     if (value%name/='11') print *,8011
     value%name='aa'
     if (var%x%name/='11') print *,8002
  select type (value)
    type is(ext)
     if (value%name2/='22') print *,8012
     value%name2='bb'
     k=1
  end select
  if (k/=1) print *,1002
  k=0
     if (loc(var%x%name)==loc(value%name)) print *,8100
  select type (w=>var%x)
    type is(ext)
     if (w    %name2/='22') print *,8102,w    %name2
     select type (value)
       type is(ext)
         if (loc(w    %name2)==loc(value%name2)) print *,8200
         k=1
     end select
  end select
  if (k/=1) print *,1001
end
end
     use mod
     class(base), allocatable :: value 
     allocate(ext::value)
     allocate(value%name,source='11')
  select type (value)
    type is(ext)
     allocate(value%name2,source='22')
  end select
     call s(value)

     print *,'sngg181p : pass'
     end program

