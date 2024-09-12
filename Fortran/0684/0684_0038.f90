subroutine sub(ia,j)
integer ia(4:j)
!$OMP PARALLEL PRIVATE(ia)
ia(4)=1
ia(5)=3
if (ia(4)/=1)print *,'error-1'
if (ia(5)/=3)print *,'error-2'
!$OMP END PARALLEL
if (ia(4)/=-9)print *,'error-11'
if (ia(5)/=-9)print *,'error-12'
end
integer ,parameter::i=4,j=5
integer ia(i:j)
ia=-9
call sub(ia,j)
if (any(ia/=-9))print *,'error-2'
print *,'pass'
end
