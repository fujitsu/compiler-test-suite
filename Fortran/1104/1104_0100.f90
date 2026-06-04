     module mod
       type z
          character(:),allocatable::n
       end type
       type,extends(z)::ze
          character(:),allocatable::nn
       end type

       type :: base
         integer(8)::d
         class(z),allocatable::bn
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

     contains

       subroutine s1(var, value)
         class(base), allocatable, intent(inout) :: var(:,:)
         class(base), intent(in) :: value
         allocate(var(2,3), source=value)
       end subroutine s1
     end module mod

     subroutine s
     use mod
     class(base), allocatable :: var(:,:)
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     allocate(ze::value%bn )
     select type(p=>value%bn)
       type is(ze)
         allocate(value%bn%n,source='aa')
         allocate(p%nn,source='bb')
     end select
     call s1(var, value) 
     value%name(:)='11'
     select type(p=>value%bn)
       type is(ze)
         value%bn%n='00'
         p%nn='00'
     end select
     k=0
     select type(var)
     type is(ext)
       if (var(1,1)%name(:)/='ok') print *,9001
       if (var(2,3)%name(:)/='ok') print *,9002
       k1=loc(var(1,1)%name)
       k=1
     end select
     if (k/=1) print *,1002
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     k=0
     select type(p=>var(1,1)%bn)
       type is(ze)
       if (p%n(:)/='aa') print *,9101
       if (p%nn(:)/='bb') print *,9201
       k=1
     end select
     if (k/=1) print *,1102
     k=0
     select type(p=>var(2,3)%bn)
       type is(ze)
       if (p%n(:)/='aa') print *,9111
       if (p%nn(:)/='bb') print *,9211
       k=1
     end select
     if (k/=1) print *,1102
     end 
     call s
     print *,'sngg777p : pass'
     end

