     module mod
       type :: base
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext

       type dse
         integer(8)::d
         class(base), allocatable :: var(:,:)
       end type
       type(dse)::v

     contains

       subroutine s1(value)
         class(base), intent(in) :: value
         allocate(v%var(2,3))
         v%var=value
       end subroutine s1
     end module mod

     subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     call s1(value) 
     value%name(:)='11'
     k=0
     select type(p=>v%var)
     type is(ext)
       if (p(1,1)%name(:)/='ok') print *,9001
       if (p(2,3)%name(:)/='ok') print *,9002
       k1=loc(p(1,1)%name)
       k=1
     end select
     if (k/=1) print *,1002
       k2=              loc(value%name)
     if (k1==k2) print *,2002
     end 
     call s
     print *,'sngg781p : pass'
     end

