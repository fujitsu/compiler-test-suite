     module mod
       type b
         integer(8)::f(2)
         integer(8),allocatable::d(:)
       end type
       type,extends(b)::e
          character(:),allocatable::n(:)
       end type
         
       type :: base
         integer(8)::u
         class(b),allocatable::bv
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name(:)
       end type ext
         class(base), allocatable :: var

     contains

       subroutine s1(value)
         class(base), intent(in) :: value
         var=value
       end subroutine s1
     end module mod

     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name(3),source='ok')
     allocate(e::value%bv)
     allocate(value%bv%d(3),source=2_8)
     select type(p=>value%bv)
       type is(e)
         allocate(p%n(3), source='xy')
     end select
     call s1(value) 
     k=0
     select type(var)
     type is(ext)
       if (any(var%name(:)/='ok')) print *,1009
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (any(value%name(:)/='ok')) print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     if (any(value%bv%d/=2)) print *,801
     value%bv%d=-2
     if (any(var  %bv%d/=2)) print *,802
     k=0
     select type(p=>var%bv)
         type is(e)
           if (any(p     %n(:)/='xy')) print *,1059
           p  %n='qq'
           k1=loc(p  %n)
           if (any(p  %n/='qq')) print *,80001
           k=1
     end select
     if (k/=1) print *,1052
     k=0
     select type(p=>var%bv)
         type is(e)
           if (any(p  %n/='qq')) print *,85001
           k=1
     end select
     if (k/=1) print *,1462
     k=0
     select type(p=>value%bv)
         type is(e)
           if (any(p     %n(:)/='xy')) print *,1159
           p  %n='qq'
           k2=loc(p  %n)
           k=1
     end select
     if (k1==k2) print *,2002
     if (k/=1) print *,1442
     print *,'sngg819p : pass'
     end 

