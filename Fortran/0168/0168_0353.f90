module m1
integer::k
contains
subroutine s1(a2)
 character (len=4), allocatable :: a1
 character (len=*), allocatable :: a2
 character (len=k), allocatable :: a3
 character(len=3) :: ch1
         ch1 = "HCL"
     allocate(a2,mold=ch1,stat=k1)
if (k1==0) print *,1001
     allocate(a3,mold=ch1,stat=k2)
if (k2==0) print *,1002
     allocate(a2,source=ch1,stat=k3)
if (k3==0) print *,1003
     allocate(a3,source=ch1,stat=k4)
if (k4==0) print *,1004
end subroutine
subroutine s2(a2)
 character (len=4), allocatable :: a1
 character (len=*), allocatable :: a2
 character (len=k), allocatable :: a3
 character(len=3),allocatable :: ch1
 character(len=3),allocatable :: ch2
 character(len=3),allocatable :: ch3
 character(len=3),allocatable :: ch4
 character(len=3),allocatable :: ch5
allocate(a1,a2,a3)
     allocate(ch1,mold=a2,stat=k0)
if (k0==0) print *,2000
     allocate(ch2,mold=a2,stat=k1)
if (k1==0) print *,2001
     allocate(ch3,mold=a3,stat=k2)
if (k2==0) print *,2002
a2=''
     allocate(ch4,source=a2,stat=k3)
if (k3==0) print *,2003
a3=''
     allocate(ch5,source=a3,stat=k4)
if (k4==0) print *,2004
end subroutine
end

use m1
 character (len=4), allocatable :: a1,a2
k=4
call s1(a1)
call s2(a2)
print *,'pass'
end
