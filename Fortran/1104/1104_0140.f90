     module mod
       type b
         integer(8)::f(2)
         integer(8),allocatable::d
       end type
       type,extends(b)::e
          character(:),allocatable::n
       end type
         
       type :: base
         integer(8)::u
         class(b),allocatable::bv
         class(b),allocatable::cv
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name
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
     allocate(value%name,source='ok')
     allocate(e::value%bv)
     allocate(value%bv%d,source=2_8)
     select type(p=>value%bv)
       type is(e)
         allocate(p%n, source='xy')
     end select
     allocate(e::value%cv)
     allocate(value%cv%d,source=2_8)
     select type(p=>value%cv)
       type is(e)
         allocate(p%n, source='xy')
     end select
     call s1(value) 
     k=0
     select type(var)
     type is(ext)
       if (var%name(:)/='ok') print *,1009
       var%name(:)='11'
       k1=loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     if (value%bv%d/=2) print *,801
     value%bv%d=-2
     if (var  %bv%d/=2) print *,802
     k=0
     select type(p=>var%bv)
         type is(e)
           if (p     %n(:)/='xy') print *,1059
           p  %n='qq'
           k1=loc(p  %n)
           if (p  %n/='qq') print *,80001
           k=1
     end select
     if (k/=1) print *,1052
     k=0
     select type(p=>var%bv)
         type is(e)
           if (p  %n/='qq') print *,85001
           k=1
     end select
     if (k/=1) print *,1462
     k=0
     select type(p=>value%bv)
         type is(e)
           if (p     %n(:)/='xy') print *,1159
           p  %n='qq'
           k2=loc(p  %n)
           k=1
     end select
     if (k1==k2) print *,2232
     if (k/=1) print *,1442
     if (value%cv%d/=2) print *,821
     value%bv%d=-2
     if (var  %cv%d/=2) print *,822
     k=0
     select type(p=>var%cv)
         type is(e)
           if (p     %n(:)/='xy') print *,1259
           p  %n='qq'
           k1=loc(p  %n)
           if (p  %n/='qq') print *,80201
           k=1
     end select
     if (k/=1) print *,1252
     k=0
     select type(p=>var%cv)
         type is(e)
           if (p  %n/='qq') print *,85021
           k=1
     end select
     if (k/=1) print *,1462
     k=0
     select type(p=>value%cv)
         type is(e)
           if (p     %n(:)/='xy') print *,1259
           p  %n='qq'
           k2=loc(p  %n)
           k=1
     end select
     if (k1==k2) print *,2222
     if (k/=1) print *,1482
     print *,'sngg817p : pass'
     end 

