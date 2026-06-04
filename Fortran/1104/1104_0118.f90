     module mod
       type :: base
          integer(8)::d1
          character(:),allocatable::na
       end type
       type, extends(base) :: ext
          integer(8)::d2
          character(:),allocatable::name
       end type

       type :: b
          integer(8)::d3
          class(base),allocatable::ba
       end type
       type, extends(b) :: e
          integer(8)::d4
          class(base),allocatable::bame
       end type
         class(b), allocatable:: var,v2

     contains

       subroutine s1(value)
         class(b), intent(in) :: value
         allocate(var, v2,source=value,stat=n)
         if (n/=0 ) print *,5001
       end subroutine s1
     end module mod

subroutine ss
     use mod
     type(e), allocatable :: value
     integer(8)::k1,k2,k3,k4
     integer(8)::n1,n2,n3,n4
     allocate(value)
     allocate(ext::value%ba)
     select type(p=>value%ba)
       type is(ext)
        allocate(p       %name,source='ok')
        allocate(p       %na,source='aa')
     end select
     allocate(ext::value%bame)
     select type(p=>value%bame)
       type is(ext)
        allocate(p       %name,source='ok')
        allocate(p       %na,source='aa')
     end select
     call s1(value) 
     k=0
     select type(var)
      type is(e)
       select type(p=>var%ba)
         type is(ext)
           p  %name(:)='11'
           p  %na(:)='11'
           k1=loc(p  %name)
           k3=loc(p  %na  )
           k=1
       end select
     end select
     if (k/=1) print *,1002
     k=0
     select type(var)
      type is(e)
       select type(p=>var%bame)
         type is(ext)
           p  %name(:)='11'
           p  %na(:)='11'
           n1=loc(p  %name)
           n3=loc(p  %na  )
           k=1
       end select
     end select
     if (k/=1) print *,1002
     k=0
     select type(p=>value%ba)
       type is(ext)
         if (p%name(:)/='ok') print *,1001
         if (p%na  (:)/='aa') print *,1011
         k2=              loc(p    %name)
         k4=              loc(p    %na)
           k=1
     end select
     if (k/=1) print *,1302
     k=0
     select type(p=>value%bame)
       type is(ext)
         if (p%name(:)/='ok') print *,1501
         if (p%na  (:)/='aa') print *,1511
         n2=              loc(p    %name)
         n4=              loc(p    %na)
           k=1
     end select
     if (k/=1) print *,1352
     if (k1==k2) print *,2052
     if (k3==k4) print *,2062
     if (n1==n2) print *,2952
     if (n3==n4) print *,2962
     k=0
     select type(v2)
      type is(e)
       select type(p=>v2%ba)
         type is(ext)
         if (p %name(:)/='ok') print *,1401
         if (p %na(:)/='aa') print *,1411
         k1=loc(p %name)
         k3=loc(p %na  )
         k=1
       end select
     end select
     if (k/=1) print *,1802
     if (k1==k2) print *,2802
     if (k3==k4) print *,2812
     k=0
     select type(v2)
      type is(e)
       select type(p=>v2%bame)
         type is(ext)
         if (p %name(:)/='ok') print *,1491
         if (p %na(:)/='aa') print *,1419
         n1=loc(p %name)
         n3=loc(p %na  )
         k=1
       end select
     end select
     if (k/=1) print *,9802
     if (n1==n2) print *,8802
     if (n3==n4) print *,9812
end
call ss
     print *,'sngg795p : pass'
     end 

