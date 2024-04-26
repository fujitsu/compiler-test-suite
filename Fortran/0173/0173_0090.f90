subroutine s1
  type x
     integer,allocatable:: a1(:)
  end type
  type (x),target:: v(2)
  type (x),pointer :: p(:)
  integer,pointer:: pp1(:),pp2(:)
  p=> v
  if (allocated(p(1)%a1)) print *,101
  if (allocated(p(2)%a1)) print *,111
  allocate(v(1)%a1(1),source=-1)
  allocate(v(2)%a1(1),source=-1)
  pp1=> v(1)%a1
  pp2=> v(2)%a1
  v= f()
  if (allocated(p(1)%a1)) print *,102
  if (allocated(p(2)%a1)) print *,112
  if (allocated(v(1)%a1)) print *,103
  if (allocated(v(2)%a1)) print *,113
  allocate(v(1)%a1(1),source=-1)
  allocate(v(2)%a1(1),source=-1)
   contains
    function f() result(r)
     type(x):: r
    end function
end
do k=1,100
call s1
end do
call s1
print *,'pass'
end
