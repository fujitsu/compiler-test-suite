subroutine s1
real,pointer::a(:)
allocate(a(3))
a=1
!$omp parallel firstprivate(a)
write(1,*)a
!$omp end parallel
end
call omp_set_num_threads(2)
call s1
call chk
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
