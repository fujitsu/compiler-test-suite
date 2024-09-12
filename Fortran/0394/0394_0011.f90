module m1
  type x3
     type (x0),pointer:: x32
     integer:: x31=1
  end type
  type x2
     type (x3),allocatable:: x22
     integer:: x21=1
  end type
  type x1
     type (x2),allocatable:: x12
     integer:: x11=1
  end type
  type x0
     type (x1),allocatable:: x02
     integer:: x01=1
  end type
end
subroutine s
use m1
type (x0),allocatable:: v
allocate (v)
allocate (v%x02)
allocate (v%x02%x12)
allocate (v%x02%x12%x22)
allocate (v%x02%x12%x22%x32)
if (v%x01/=1) print *,10001
if (v%x02%x11/=1) print *,10002
if (v%x02%X12%x21/=1) print *,10003
if (v%x02%X12%x22%x31/=1) print *,10004
if (v%x02%X12%x22%x32%x01/=1) print *,10005
end
call s
print *,'pass'
end
