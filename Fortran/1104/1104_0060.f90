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
         class(b), allocatable, intent(inout) :: var(:)
         class(b), intent(in) :: value(:)
         allocate(var, source=value)
       end subroutine s1
     end module mod

     subroutine w
     use mod
     class(b), allocatable :: var(:)
     type(b), allocatable :: value(:)
     integer(8)::k1,k2
     allocate(value(2))
     allocate(ext::value(1)%bv)
     allocate(ext::value(2)%bv)
     select type(p=>value(1)%bv)
       type is(ext)
         allocate(p%name,source='11')
     end select
     select type(p=>value(2)%bv)
       type is(ext)
         allocate(p%name,source='22')
     end select
     call s1(var, value) 
     k=0
     select type( p=>var(1)%bv )
       type is(ext)
         p%name(:)='00'
       k1=loc(p%name)
       k=1
     end select
     if (k/=1) print *,1002
     select type(p=>value(1)%bv)
       type is(ext)
         if (p%name(:)/='11') print *,1001
         k2=              loc(p%name)
     end select
     if (k1==k2) print *,2002
     k=0
     select type( p=>var(2)%bv )
       type is(ext)
         p%name(:)='00'
       k1=loc(p%name)
       k=1
     end select
     if (k/=1) print *,1102
     select type(p=>value(2)%bv)
       type is(ext)
         if (p%name(:)/='22') print *,1101
         k2=              loc(p%name)
     end select
     if (k1==k2) print *,2102
     end
     call w
     print *,'sngg639p : pass'
     end 
