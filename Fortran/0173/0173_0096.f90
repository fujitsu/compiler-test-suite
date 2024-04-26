subroutine s1(n)
  type x
     integer,allocatable:: a1(:)
  end type
  type (x),target:: v(1)
type z
  type (x),pointer :: p(:)
  integer,pointer:: pp1(:),pp2(:)
end type
type zz
  type(zz),pointer:: zp
  type(z),pointer:: zw
end type
type(zz),pointer:: w
integer(8),save::ip_save
allocate(w)
allocate(w%zp)
allocate(w%zp%zw)
  w%zp%zw%p=> v
  if (allocated(w%zp%zw%p(1)%a1)) print *,101
  allocate(v(1)%a1(1),source=-1+n)
  w%zp%zw%pp1=> v(1)%a1
if (n==1) then
   ip_save= loc(v(1)%a1)
else 
   if (ip_save== loc(v(1)%a1)) then
     print *,'Error,invalid deallocate',901   
   endif
endif
  w%zp%zw%p= f(w%zp%zw%p)
  if (allocated(w%zp%zw%p(1)%a1)) print *,102
  if (allocated(v(1)%a1)) print *,103
  allocate(v(1)%a1(1),source=-1+n*100)
   contains
    elemental function f(p) result(r)
     type(x),intent(in):: p
     type(x):: r
    end function
end
do k=1,500
call s1(k)
end do
print *,'pass'
end
