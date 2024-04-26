module m1
integer:: k1=0,k2=0,k3=0
end
subroutine s
interface 
 subroutine s1() bind(c,name='x1')
 end subroutine
end interface
procedure(s1),bind(c)::t1
procedure(s1),bind(c,name='y1')::t2
call s1
call t1
call t2
end
 subroutine s1() bind(c,name='x1')
 use m1
  k1=k1+1
 end subroutine
 subroutine t1() bind(c)
 use m1
  k2=k2+1
 end subroutine
 subroutine t2() bind(c,name='y1')
 use m1
  k3=k3+1
 end subroutine
 use m1
call s
if (k1/=1)print *,1001,k1
if (k2/=1)print *,1002,k2
if (k3/=1)print *,1003,k3
print *,'pass'
end


