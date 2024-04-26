subroutine s1
  type x
     integer,allocatable:: a1(:)
  end type
  type (x),target:: v
type z
  type (x),pointer :: p
  integer,pointer:: pp1(:),pp2(:)
end type
type zz
  type(zz),pointer:: zp
  type(z),pointer:: zw
end type
type(zz),pointer:: w
allocate(w)
allocate(w%zp)
allocate(w%zp%zw)
  w%zp%zw%p=> v
  if (allocated(w%zp%zw%p%a1)) print *,101
  allocate(v%a1(1),source=-1)
  w%zp%zw%pp1=> v%a1
  w%zp%zw%p= f(w%zp%zw%p)
  if (allocated(w%zp%zw%p%a1)) print *,102
  if (allocated(v%a1)) print *,103
  allocate(v%a1(1),source=-1)
   contains
    elemental function f(p) result(r)
     type(x),intent(in):: p
     type(x):: r
    end function
end
do k=1,500
call s1
end do
print *,'pass'
end
