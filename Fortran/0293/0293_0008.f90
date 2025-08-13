subroutine s1
namelist /na/ iii
!$ CALL OMP_SET_NUM_THREADS(1)
read(7,na)
if (iii/=101)print *,101,iii
!$omp parallel
read(8,na)
if (iii/=201)print *,201,iii
!$omp end parallel
if (iii/=201)print *,102,iii
end
call s0
call s1
print *,'pass'
end
subroutine s0
write(7,*) ' &NA iii=101 /'
write(8,*) ' &NA iii=201 /'
rewind 7
rewind 8
end subroutine
