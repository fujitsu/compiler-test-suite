subroutine s1(zero)
integer :: zero
integer:: a(3)=1,b(3)=2
integer:: c(1:0)=2,cc(1:zero)
character(0):: d(2)='1'
character(zero):: dd(2)
type x1
 integer(1)::x1e
end type
type (x1):: e(3)
type x2
 integer(8)::x2e
end type
type (x2):: f(3)
type x3
end type
type (x3):: g(3)
character(0):: h(3)
character(zero):: hh(3)
cc=1
dd='1'
e%x1e=1
f%x2e=1
g=x3()
h='1'
hh='1'

if (.not.is_contiguous(a+b)) print *,1001
if (.not.is_contiguous(a(1:3:2)+b(1:3:2))) print *,1002
if (.not.is_contiguous(c)) print *,1003
if (.not.is_contiguous(d)) print *,1003
if (.not.is_contiguous(cc)) print *,1004
if (.not.is_contiguous(dd)) print *,1005
if (.not.is_contiguous(e%x1e)) then
else
  print *,1006
endif
if (     is_contiguous(f%x2e)) print *,1007
if (     is_contiguous(e(1:3:2))) print *,1007
if (     is_contiguous(f(1:3:2))) print *,1008
if (     is_contiguous(g(1:3:2))) print *,1009
if (     is_contiguous(h(1:3:2))) print *,1010
if (     is_contiguous(hh(1:3:2))) print *,1011
end
call s1(0)
print *,'pass'
end

