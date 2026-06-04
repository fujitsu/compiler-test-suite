     module mod
       type :: base
          character(:),allocatable::na
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
         class(base), allocatable:: var,v2,v3

     contains

       subroutine s1(value)
         class(base), intent(in) :: value
         allocate(var, v2,v3,source=value,stat=n)
         if (n==0 ) print *,5001
       end subroutine s1
     end module mod

     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2,k3,k4
     allocate(value)
     allocate(value%name,source='ok')
     allocate(value%na,source='aa')
     allocate(v3)
     call s1(value) 
     k=0
     select type(v3)
     type is(ext)
        print *,4011
     type is(base)
       k=1
     end select
     if (k/=1) print *,1302
     k=0
     select type(var)
     type is(ext)
       var%name(:)='11'
       var%na(:)='11'
       k1=loc(var%name)
       k3=loc(var%na  )
       k=1
     end select
     if (k/=1) print *,1002
     if (value%name(:)/='ok') print *,1001
     if (value%na  (:)/='aa') print *,1011
       k2=              loc(value%name)
       k4=              loc(value%na)
     if (k1==k2) print *,2002
     if (k3==k4) print *,2012
     k=0
     select type(v2)
     type is(ext)
       if (v2%name(:)/='ok') print *,1401
       if (v2%na(:)/='aa') print *,1411
       k1=loc(v2%name)
       k3=loc(v2%na  )
       k=1
     end select
     if (k/=1) print *,1802
     if (k1==k2) print *,2802
     if (k3==k4) print *,2812
     print *,'sngg793p : pass'
     end 

