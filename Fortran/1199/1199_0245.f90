     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
type x
       class(*   ), pointer     :: var
       class(*   ), pointer     :: v
end type
type(x)::r

     contains

       subroutine s1(value)
         class(*   ), intent(in) :: value
         kk=1
         allocate(r%var, r%v,source=value,stat=kk)
         if (kk/=0) print *,2902
       end subroutine s1
     end module mod

subroutine s
     use mod
     type(ext), allocatable :: value
     integer(8)::k1,k2
     allocate(value)
     allocate(value%name,source='ok')
     call s1(value) 
     k=0
     select type(w=>r%var)
     type is(ext)
       w  %name(:)='11'
       k1=loc(w  %name)
       k=1
     end select
     if (k/=1) print *,1002
     k=0
     select type(w=>r%v)
     type is(ext)
       w%name(:)='11'
       k=1
     end select
     if (k/=1) print *,1602
     if (value%name(:)/='ok') print *,1001
       k2=              loc(value%name)
     if (k1==k2) print *,2002
end
call s
     print *,'sngg389q : pass'
     end program

