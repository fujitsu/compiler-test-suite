module m1
  type x
    integer::x1
   contains
    final :: xp
  end type

  type,extends(x)::y
    integer::y1
   contains
    final :: yp
  end type

 integer::xr

 contains
 subroutine xp(d)
  type(x)::d
   xr = xr+1
 end subroutine

 subroutine yp(d)
  type(y)::d
   xr = xr+1
 end subroutine
end

subroutine s4
use m1
class(x), allocatable::v
xr = 1
allocate(v)
v%x1=1
!$omp parallel
!$omp sections lastprivate(v)
deallocate(v)
allocate(y::v)
select type (v)
 type is(y)
  v%x1=11
  v%y1=12
 class default
  print*,"911" 
end select
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,201
if (xr /= 2) print*,202
select type (v)
 type is(y)
  if(v%x1 /= 11) print*,101
  if(v%y1 /= 12) print*,102
 class default
  print*,"912" 
end select
end subroutine s4
call s4
print *,'PASS'
end
