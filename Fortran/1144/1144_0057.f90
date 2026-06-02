module m01
type x
   integer::x1=1
   contains
generic::gen=>y,z
    procedure,private::y
    procedure        ::z
end  type
type(x):: v
interface
  module subroutine s
  end subroutine
end interface
contains
subroutine z(d,k)
class(x)::d
if (d%x1/=k) print *,1001
write(1,*)k
end subroutine
subroutine y(d)
class(x)::d
if (d%x1/=1) print *,1001
write(2,*)2
end subroutine
 subroutine t1
    if (v%x1/=1) print *,101
call v%y()
call v%z(1)
call v%gen()
call v%gen(1)
 end subroutine
end
submodule (m01)  smod
contains
 module subroutine s
    if (v%x1/=1) print *,101
call v%y()
call v%z(1)
call v%gen()
call v%gen(1)
 end subroutine
end
use m01
call t1
call s
    if (v%x1/=1) print *,201
!call v%y()
call v%z(1)
call v%gen(1)
call chk
print *,'sngg389n : pass'
end
subroutine chk
rewind 1
rewind 2
read(1,*)k;if (k/=1)print *,1001
read(1,*)k;if (k/=1)print *,1001
read(1,*)k;if (k/=1)print *,1001
read(1,*)k;if (k/=1)print *,1001
read(1,*)k;if (k/=1)print *,1001
read(1,*)k;if (k/=1)print *,1001
read(1,*,end=2)k;if (k/=1)print *,1001
print *,1002
2 continue
read(2,*)k;if (k/=2)print *,1001
read(2,*)k;if (k/=2)print *,1001
read(2,*)k;if (k/=2)print *,1001
read(2,*)k;if (k/=2)print *,1001
read(2,*,end=3)k;if (k/=2)print *,1001
print *,1003
3 continue
end
