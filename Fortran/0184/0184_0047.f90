module m1
integer  k1,k2,k3,k4,k5,k6
integer :: a1(1,1)
data ((a1(k1,k2),k1=1,1),k2=1,1)/1/
integer:: a2(1)= [(( k3*k4 , k3=1,1),k4=1,1)] 
integer:: a3(1)
parameter(a3 = [(( k5*k6 , k5=1,1),k6=1,1)] )
contains
recursive subroutine s1(n)
integer        i1,i2,i3,i4,i5,i6
integer :: b1(1,1)
data ((b1(i1,i2),i1=1,1),i2=1,1)/1/
integer:: b2(1)= [(( i3*i4 , i3=1,1),i4=1,1)] 
integer:: b3(1)
parameter(b3 = [(( i5*i6 , i5=1,1),i6=1,1)] )
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
 nn=n
 k1=n
 k2=n
 k3=n
 k4=n
 k5=n
 k6=n
 n=n+1
 if (n<3)call s1(n)
 if (k1/=2) print *,201
 if (k2/=2) print *,201
 if (k3/=2) print *,201
 if (k4/=2) print *,201
 if (k5/=2) print *,201
 if (k6/=2) print *,201
nk=0
call s11(nk)
contains
recursive subroutine s11(n)
if (b1(1,1)/=1) print *,101
if (b2(1)/=1) print *,102
if (b3(1)/=1) print *,103
 nx=n
 i1=n
 i2=n
 i3=n
 i4=n
 i5=n
 i6=n
 n=n+1
 if (n<3)call s11(n)
 if (i1/=2) print *,201
 if (i2/=2) print *,201
 if (i3/=2) print *,201
 if (i4/=2) print *,201
 if (i5/=2) print *,201
 if (i6/=2) print *,201
end subroutine
end subroutine
recursive subroutine s2(n)
integer :: b1(1,1)
data ((b1(i1,i2),i1=1,1),i2=1,1)/1/
integer:: b2(1)= [(( i3*i4 , i3=1,1),i4=1,1)] 
integer:: b3(1)
parameter(b3 = [(( i5*i6 , i5=1,1),i6=1,1)] )
integer        i1,i2,i3,i4,i5,i6
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
 nn=n
 k1=n
 k2=n
 k3=n
 k4=n
 k5=n
 k6=n
 n=n+1
 if (n<3)call s1(n)
 if (k1/=2) print *,1201
 if (k2/=2) print *,2201
 if (k3/=2) print *,3201
 if (k4/=2) print *,4201
 if (k5/=2) print *,5201
 if (k6/=2) print *,6201
nk=0
call s21(nk)
contains
recursive subroutine s21(n)
if (b1(1,1)/=1) print *,101
if (b2(1)/=1) print *,102
if (b3(1)/=1) print *,103
 nx=n
 i1=n
 i2=n
 i3=n
 i4=n
 i5=n
 i6=n
 n=n+1
 if (n<3)call s21(n)
 if (i1/=2) print *,2011
 if (i2/=2) print *,2012
 if (i3/=2) print *,2013
 if (i4/=2) print *,2014
 if (i5/=2) print *,2015
 if (i6/=2) print *,2016,i6
end subroutine
end subroutine
end
use m1
n=0
call s1(n)
n=0
call s2(n)
print *,'pass'
end
