subroutine s
integer::b(2)
call s1(2,b)
call s2(2,b)
call s3(2,b)
contains
subroutine s1(i,b)
integer         :: b(i)
namelist /nam/ b
b=[1,2]
write(1,nam)
end subroutine
subroutine s2(i,b)
integer         :: b(i)
namelist /nam/ b
!$omp parallel
b=[1,2]
write(1,nam)
!$omp end parallel
end subroutine
subroutine s3(i,b)
integer         :: b(i)
namelist /nam/ b
!$omp parallel
do k=i,2
b=[1,2]
write(1,nam)
end do
!$omp end parallel
end subroutine
end
call omp_set_num_threads(1)
call s
call chk
print *,'pass'
end
subroutine chk
integer b(2)
namelist /nam/b
rewind 1
do k=1,3
read(1,nam)
if (any(b/=[1,2]))print *,102,b,k
end do
end



