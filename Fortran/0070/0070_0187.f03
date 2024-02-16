integer,pointer::nam1
integer,pointer::nam2(:)
common /com1/nam1
common /com2/nam2
namelist /nam/nam1,nam2
!$omp parallel do  firstprivate(/com1/) lastprivate(/com2/)
do k=1,1
allocate(nam1,nam2(2))
nam1=1
nam2=2
write(63,nam)
rewind 63
read(63,nam)
end do
!$omp end parallel do
print *,'pass'
end
