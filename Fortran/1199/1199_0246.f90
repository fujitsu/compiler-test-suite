     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
type x
       class(*   ), pointer     :: var(:)
       class(*   ), pointer     :: v(:)
end type
type(x)::r

     contains

       subroutine s1(value)
         class(*   ), intent(in) :: value(:)
kk=1
         allocate(r%var,r%v,source=value,stat=kk)
if (kk/=0) print *,8001
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
     select type(w=>r%var)
     type is(ext)
       w  (2)%name(:)='11'
       k1=loc(w  (2)%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (value(2)%name(:)/='ok') print *,1001
     select type(w=>r%v)
     type is(ext)
     if (w(2)%name(:)/='ok') print *,1501
       k=1
     end select
     if (k/=1) print *,1502
       k2=              loc(value(2)%name)
     if (k1==k2) print *,2002
end
call s
     print *,'sngg390q : pass'
     end program

