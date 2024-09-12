subroutine s1
real,pointer::a(:)
allocate(a(3))
a=1
!$omp parallel firstprivate(a)
a(3)=2
a(1)=2
a(2)=2
if (any(abs(a-2)>0.001)) print *,301
!$omp end parallel
if (any(abs(a-2)>0.001)) print *,401
end
call s1
print *,'pass'
end
subroutine chk
real x(3)
rewind 1
read(1,*)x
if (any(abs(x-1)>0.001)) print *,101
read(1,*)x
if (any(abs(x-1)>0.001)) print *,103
read(1,*,end=2)x
print *,102
2 continue
end
