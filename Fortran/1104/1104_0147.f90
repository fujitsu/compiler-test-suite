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
         class(b),allocatable::bv(:,:)
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name(:)
       end type ext
         class(base), allocatable :: var(:)

     contains

       subroutine s1(value)
         class(base), intent(in) :: value(:)
         allocate(var,source=value)
       end subroutine s1
     end module mod

subroutine ww
     use mod
     type(ext), allocatable :: value(:)
     integer(8)::k1,k2
     allocate(value(5))
do nn=1,5
     allocate(value(nn)%name(3),source='ok')
     allocate(e::value(nn)%bv(2,3))
     do n2=1,3
     do n1=1,2
     allocate(value(nn)%bv(n1,n2)%d(3),source=2_8)
     select type(p=>value(nn)%bv)
       type is(e)
         allocate(p(n1,n2)%n(3), source='xy')
     end select
     end do
     end do
end do
     call s1(value) 
do nn=1,5
     k=0
     select type(var)
     type is(ext)
       if (any(var(nn)%name(:)/='ok')) print *,1009
       var(nn)%name(:)='11'
       k1=loc(var(nn)%name)
       k=1
     end select
     if (k/=1) print *,1002
     if (any(value(nn)%name(:)/='ok')) print *,1001
       k2=              loc(value(nn)%name)
     if (k1==k2) print *,2002
     do n2=1,3
     do n1=1,2
     if (any(value(nn)%bv(n1,n2)%d/=2)) print *,801
     value(nn)%bv(n1,n2)%d=-2
     if (any(var(nn)  %bv(n1,n2)%d/=2)) print *,802
     k=0
     select type(p=>var(nn)%bv)
         type is(e)
           if (any(p(n1,n2)     %n(:)/='xy')) print *,1059
           p(n1,n2)  %n='qq'
           k1=loc(p(n1,n2)  %n)
           if (any(p(n1,n2)  %n/='qq')) print *,80001
           k=1
     end select
     if (k/=1) print *,1052
     k=0
     select type(p=>var(nn)%bv)
         type is(e)
           if (any(p(n1,n2)  %n/='qq')) print *,85001
           k=1
     end select
     if (k/=1) print *,1462
     k=0
     select type(p=>value(nn)%bv)
         type is(e)
           if (any(p(n1,n2)     %n(:)/='xy')) print *,1159
           p(n1,n2)  %n='qq'
           k2=loc(p(n1,n2)  %n)
           k=1
     end select
     if (k1==k2) print *,2002
     if (k/=1) print *,1442
     end do
     end do
  end do
end
call ww
     print *,'sngg824p : pass'
     end 

