subroutine s1
namelist /na/ iii, nnn, kkk
!$ CALL OMP_SET_NUM_THREADS(1)
iii=1
kkk=1
nnn=1
do i=1,10
iii=i
kkk=i+1
nnn=i+2
write(56,na)
end do
call chk
end
call s1
print *,'pass'
end
subroutine chk
namelist /na/ iii, nnn, kkk
iii=1
kkk=1
nnn=1
rewind 56
!$omp parallel default(private),shared(nnn)
do mm=1,10
read(56,na)
if (iii/=mm)print *,201,iii,mm
if (nnn/=mm+2)print *,202,nnn,mm+2
if (kkk/=mm+1)print *,203,kkk,mm+1
end do
!$omp end parallel
end
