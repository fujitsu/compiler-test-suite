  type LocK_type 
     integer :: e
  end type 

  type :: t23456789
     integer :: n
  end type

  type t1
     integer :: nn
     type(LocK_type):: d
  end type 

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type 

type(t23456789):: v1
type(t1       ):: v2
type(t2       ):: v3
type(LocK_type):: v4


v1%n = 1
v2%nn = 2
v2%d%e = 3
v3%nn = 4
v3%d%e =5
v3%x%n =6
v4%e =7
if(v1%n /= 1) print *,1001
if(v2%nn /= 2) print *,1002
if(v2%d%e /= 3) print *,1003
if(v3%nn /= 4) print *,1004
if(v3%d%e /=5) print *,1005
if(v3%x%n /=6) print *,1006
if(v4%e /=7) print *,1007

print *,'pass'
end
