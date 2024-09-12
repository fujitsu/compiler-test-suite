subroutine sub(ia,i,j,k,m)
integer ia(i:j,k:m)
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(ia)
ia(4,2)=1
ia(4,3)=2
ia(5,2)=3
ia(5,3)=4
write(1,*)ia
if (any(lbound(ia)/=(/4,2/)))print *,'error-4'
if (any(ubound(ia)/=(/5,3/)))print *,'error-5'
if (any(shape(ia)/=(/2,2/)))print *,'error-6'
if (    size (ia)/=4)print *,'error-7'
!$OMP END PARALLEL
rewind 1
read(1,*) i1,i2,i3,i4
if (any((/i1,i2,i3,i4/)/=(/1,3,2,4/)))print *,'error-1'
end
integer ,parameter::i=4,j=5,k=2,m=3
integer ia(i:j,k:m)
ia=-9
call sub(ia,i,j,k,m)
if (any(ia/=-9))print *,'error-2'
print *,'pass'
end
