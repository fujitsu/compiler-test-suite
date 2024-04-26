subroutine s1
save
integer::m=0
type x
integer::x1
end type
class(x),allocatable::a4
integer :: a1(1),a2(1),a22(1,1),a24(1,1),a25(1,1)
data (a1(k1),k1=1,1)/1/
integer ::a3(1)=[( k2,k2=1,1)]
stmt(k6)=k6
allocate(a4)
a2=[( m+k3,k3=1,1)]
a2=[( m+f(k31),k31=1,1)]
forall( k41=1:1) 
forall( k42=1:1) 
  a22(k41,k42)=1
end forall
end forall
forall( k32=1:1) 
forall( k33=1:1) 
  a22(f(k32),m+k33)=1
end forall
end forall
forall( k43=1:1)  a2(k43)=1
forall( k34=1:1)  a2(f(k34))=1
do concurrent( k5=1:1) 
 a2(k5)=k5
end do
do concurrent( k35=1:1) 
 a2(f(k35+m))=1
end do
do concurrent( k51=1:1,k52=1:1 ) 
 a24(k51,k52)=1
end do
do concurrent( k53=1:1 ) 
do concurrent( k54=1:1 ) 
 a25(k53,k54)=1
end do
end do
do concurrent( k36=1:1 ) 
do concurrent( k37=1:k36 ) 
 a25(k37+m,1)=1
end do
end do
associate( k7=> a1(1) )
  k7=1
end associate
select type (k8=>a4)
 type is(x)
     k8%x1=1
end select
call xx( k1, k2, k3, k4, k5, k6, k7, k8, k41, k42, k43, k51, k52, k53, k54, k31, k32, k33, k34, k35, k36, k37)
n=0
call ss(n)
contains
pure function f(k) result(r)
integer,intent(in)::k
integer::r
r=k
end function
recursive subroutine ss(n)
integer::n
if (a1(1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
if (a22(1,1)/=1) print *,105
if (a24(1,1)/=1) print *,107
if (a25(1,1)/=1) print *,108
  k1=n
  k2=n
  k3=n
  k4=n
  k5=n
  k6=n
  k7=n
  k8=n
  k41=n
  k42=n
  k43=n
  k51=n
  k52=n
  k53=n
  k54=n
  k31=n
  k32=n
  k33=n
  k34=n
  k35=n
  k36=n
  k37=n
n=n+1
if (n<2) call ss(n)
n=n-1
if (k1/=1) print *,10001,k1,n
if (k2/=1) print *,10002,n
if (k3/=1) print *,10003,n
if (k4/=1) print *,10004,k4,n
if (k5/=1) print *,10005,k5,n
if (k6/=1) print *,10006,k6,n
if (k7/=1) print *,10007,n
if (k8/=1) print *,10008,n
if (k41/=1) print *,10104,k41,n
if (k42/=1) print *,10204,k42,n
if (k43/=1) print *,10304,k43,n
if (k51/=1) print *,11004,k51,n
if (k52/=1) print *,11004,k52,n
if (k53/=1) print *,11004,k53,n
if (k54/=1) print *,11004,k54,n
if (k31/=1) print *,12104,k31,n
if (k32/=1) print *,12204,k32,n
if (k33/=1) print *,12304,k33,n
if (k34/=1) print *,12344,k34,n
if (k35/=1) print *,12354,k35,n
if (k36/=1) print *,12364,k36,n
if (k37/=1) print *,12374,k37,n
end subroutine
end
call s1
print *,'pass'
end
subroutine xx( k1, k2, k3, k4, k5, k6, k7, k8, k41, k42, k43, k51, k52, k53, k54, k31, k32, k33, k34, k35, k36, k37)
end
