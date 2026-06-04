     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

       type b
         class(base),allocatable::bv
       end type

     contains

       subroutine s1(var, value)
         class(b), allocatable, intent(inout) :: var
         class(b), intent(in) :: value
         allocate(var, source=value)
       end subroutine s1
     end module mod

     subroutine w
     use mod
     class(b), allocatable :: var
     type(b), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(ext::value%bv)
     select type(p=>value%bv)
       type is(ext)
         allocate(p%name,source='11')
     end select
     call s1(var, value) 
     k=0
     select type( p=>var%bv )
       type is(ext)
         p%name(:)='00'
       k1=loc(p%name)
       k=1
     end select
     if (k/=1) print *,1002
     select type(p=>value%bv)
       type is(ext)
         if (p%name(:)/='11') print *,1001
         k2=              loc(p%name)
     end select
     if (k1==k2) print *,2002
     end
     call w
     print *,'sngg637p : pass'
     end 
