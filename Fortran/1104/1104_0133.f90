     module mod
       type :: base
         integer(8):: a
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(*   ), allocatable, intent(inout) :: var
         class(*   ), pointer :: value
         var=value
       end subroutine s1
     end module mod

     use mod
     class(*   ), allocatable :: var
     class(*  ), pointer     :: value
     integer(8)::k1,k2
     allocate(ext::value)
   select type(value)
    type is(ext)
     value%a =8
     allocate(value%name,source='ok')
   end select
     call s1(var, value) 
     k=0
     select type(var)
     type is(ext)
       if (var%a /= 8) print *,8099
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
   select type(value)
    type is(ext)
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     end select
     if (k1==k2) print *,2002
     print *,'sngg810p : pass'
     end 

