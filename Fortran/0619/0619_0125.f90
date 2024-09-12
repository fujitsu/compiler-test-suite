subroutine s1
integer a1(2),a2(3),a3(2),a4(2)
equivalence (a1(2),a2(1))
equivalence (a2(2),a3(1))
equivalence (a2(3),a4(1))
common /c/a1
a1=(/1,2/)
a3=(/3,4/)
a4(2)=5
if (a1(1)/=1)print *,101
if (a1(2)/=2)print *,102
if (a2(1)/=2)print *,103
if (a2(2)/=3)print *,104
if (a2(3)/=4)print *,105
if (a3(1)/=3)print *,106
if (a3(2)/=4)print *,107
if (a4(1)/=4)print *,108
if (a4(2)/=5)print *,109
!$omp parallel private(/c/)
!$omp end parallel
if (a1(1)/=1)print *,401
if (a1(2)/=2)print *,402
if (a2(1)/=2)print *,403
if (a2(2)/=3)print *,404
if (a2(3)/=4)print *,405
if (a3(1)/=3)print *,406
if (a3(2)/=4)print *,407
if (a4(1)/=4)print *,408
if (a4(2)/=5)print *,409
!$omp parallel firstprivate(/c/)
if (a1(1)/=1)print *,501
if (a1(2)/=2)print *,502
if (a2(1)/=2)print *,503
if (a2(2)/=3)print *,504
if (a2(3)/=4)print *,505
if (a3(1)/=3)print *,506
if (a3(2)/=4)print *,507
if (a4(1)/=4)print *,508
if (a4(2)/=5)print *,509
!$omp end parallel
end
call s1
print *,'pass'
end
