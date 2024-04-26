subroutine s1
namelist /na/ iii, nnn, kkk
!$ CALL OMP_SET_NUM_THREADS(1)
iii=1
kkk=1
nnn=1
!$omp parallel default(private),shared(nnn)
do i=1,10
iii=i
kkk=i+1
nnn=i+2
write(55,na)
end do
!$omp end parallel
if (nnn/=12)print *,103,nnn
call chk
end
call s1
print *,'pass'
end
subroutine chk
namelist /na/ iii, nnn, kkk
rewind 55
do mm=1,10
read(55,na)
if (iii/=mm)print *,201,iii,mm
if (nnn/=mm+2)print *,202,nnn,mm+2
if (kkk/=mm+1)print *,203,kkk,mm+1
end do
end
