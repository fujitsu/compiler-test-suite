subroutine s1(n)
integer,pointer,contiguous:: p(:,:)
integer,pointer           :: x(:,:)
integer,allocatable       :: a(:,:)
integer,target:: t(2,4)
if (n==1) p=>t
if (n==2) p=>t(::n,::n)
p=1
if (p(1,1)/= 1) print *,101
if (n==1) x=>t
if (n==2) x=>t(::n,::n)
x=1
if (x(1,1)/= 1) print *,102
allocate( a(2,4)      )
a=1
if (a(1,1)/= 1) print *,103
!$omp parallel firstprivate( p,x,a)
if (n==1) p=>t
if (n==2) p=>t(::n,::n)
p=1
if (p(1,1)/= 1) print *,101
if (n==1) x=>t
if (n==2) x=>t(::n,::n)
x=1
if (x(1,1)/= 1) print *,102
a=1
if (a(1,1)/= 1) print *,103
!$omp end parallel 

end
call s1(1)
print *,'pass'
end
