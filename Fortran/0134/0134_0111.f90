module m1
integer:: k1=0,k2=0,k3=0
integer:: k0=0,k4=0,k5=0
integer:: k7=0,k6=0
end
subroutine s
interface 
 subroutine s1() bind(c,name='x1')
 end subroutine
 subroutine s2() bind(c)
 end subroutine
end interface
procedure(s1)::t0
procedure(s1),bind(c)::t1
procedure(s1),bind(c,name='y1')::t2
procedure(s2)::t3
procedure(s2),bind(c)::t4
procedure(s2),bind(c,name='y2')::t5
call s1
call s2
call t0
call t1
call t2
call t3
call t4
call t5
end
 subroutine s1() bind(c,name='x1')
 use m1
  k1=k1+1
 end subroutine
 subroutine s2() bind(c)
 use m1
  k4=k4+1
 end subroutine
 subroutine t1() bind(c)
 use m1
  k2=k2+1
 end subroutine
 subroutine t2() bind(c,name='y1')
 use m1
  k3=k3+1
 end subroutine
 subroutine t0() bind(c)
 use m1
  k5=k5+1
 end subroutine
 subroutine t3() bind(c)
 use m1
  k6=k6+1
 end subroutine
 subroutine t4() bind(c)
 use m1
  k7=k7+1
 end subroutine
 subroutine t5() bind(c,name='y2')
 use m1
  k0=k0+1
 end subroutine
 use m1
call s
if (k1/=1)print *,1001,k1
if (k2/=1)print *,1002,k2
if (k3/=1)print *,1003,k3
if (k4/=1)print *,1004,k4
if (k5/=1)print *,1005,k5
if (k6/=1)print *,1006,k6
if (k7/=1)print *,1007,k7
print *,'pass'
end


