subroutine s1
  type x
    integer,allocatable,dimension(:):: a
    integer,allocatable             :: s
  end type
  type(x)::v1,v2(2)
  type(x)::w1,w2(2)
  allocate(v1%a(2:4))
  v1%a=2
  allocate(w1%a,source=v1%a)
  if (any(v1%a/=2))print *,101,v1%a
  if (any(ubound(v1%a)/=4))print *,102,ubound(v1%a)

  k=1
  allocate(v2(k)%a(2:4))
  v2(k)%a=3
  allocate(v2(k+1)%a,source=v2(k)%a)
  if (any(v2(k+1)%a/=3))print *,201,v2(k+1)%a
  if (any(ubound(v2(k+1)%a)/=4))print *,202,ubound(v2(k+1)%a)

  allocate(w2(1)%a(2:4))
  w2(1)%a=3
  allocate(w2(2)%a,source=w2(1)%a)
  if (any(w2(2)%a/=3))print *,301,w2(2)%a
  if (any(ubound(w2(2)%a)/=4))print *,302,ubound(w2(2)%a)
end
call s1
print *,'pass'
end
