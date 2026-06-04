     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       class(base), pointer     :: var(:)
       class(base), pointer     :: v(:)

     contains

       subroutine s1(value)
         class(base), intent(in) :: value(:)
         allocate(var,v,source=value)
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value(:)
     integer(8)::k1,k2
     allocate(value(2))
     allocate(value(2)%name,source='ok')
     call s1(value) 
     k=0
     select type(var)
     type is(ext)
       var(2)%name(:)='11'
       k1=loc(var(2)%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value(2)%name(:)/='ok') print *,1001
     select type(v)
     type is(ext)
     if (v(2)%name(:)/='ok') print *,1501
       k=1
     end select
     if (k/=1) print *,1502
       k2=              loc(value(2)%name)
     if (k1==k2) print *,2002
end
call s
     print *,'sngg256q : pass'
     end program

