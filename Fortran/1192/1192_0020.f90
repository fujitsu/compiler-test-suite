     module mod
       type :: base
          character(:),allocatable::name 
       end type base

       type, extends(base) :: ext       
          character(2)            ::name2
       end type ext
end
     use mod
     type(ext), allocatable :: value 
     type t
       type(ext),allocatable::x
     end type
     type(t),allocatable::var
     allocate(value)
     allocate(value%name,source='11')
     value%name2='22'
     var=t(value)
     if (var%x%name/='11') print *,8001
     if (var%x%name2/='22') print *,8002
     if (value%name/='11') print *,8011
     if (value%name2/='22') print *,8012
     if (loc(var%x%name)==loc(value%name)) print *,8100
     if (loc(var%x%name2)==loc(value%name2)) print *,8200
     print *,'sngg179p : pass'
     end program

