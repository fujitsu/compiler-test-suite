integer i,j
i=11
j=15
call sub1(11,15)
call sub1(i,j)
call sub2(11,15)
call sub2(i,j)
call sub3(11,15)
call sub3(i,j)
call sub4(11,15)
call sub4(i,j)

print *,'pass'
contains
subroutine sub1(i,j)
integer(1)::i1(i:j)
if(any(lbound(i1)/=[11])) print *,'err1'
if(any(ubound(i1)/=[15])) print *,'err2'
!$omp task
!$omp task
!$omp parallel
if(any(lbound(i1)/=[11])) print *,'err3'
if(any(ubound(i1)/=[15])) print *,'err4'
!$omp endparallel
!$omp endtask
!$omp endtask
end subroutine

subroutine sub2(i,j)
integer(2)::i1(i:j)
if(any(lbound(i1)/=[11])) print *,'err5'
if(any(ubound(i1)/=[15])) print *,'err6'
!$omp parallel
!$omp task
!$omp task
if(any(lbound(i1)/=[11])) print *,'err7'
if(any(ubound(i1)/=[15])) print *,'err8'
!$omp endtask
!$omp endtask
!$omp end parallel
end subroutine

subroutine sub3(i,j)
integer(4)::i1(i**1:j**1)
if(any(lbound(i1)/=[11])) print *,'err9'
if(any(ubound(i1)/=[15])) print *,'err10'
!$omp task
!$omp parallel
!$omp task
!$omp task
if(any(lbound(i1)/=[11])) print *,'err11'
if(any(ubound(i1)/=[15])) print *,'err12'
!$omp endtask
!$omp endtask
!$omp end parallel
!$omp endtask
end subroutine

subroutine sub4(i,j)
integer(8)::i1(i+1:j+1)
if(any(lbound(i1)/=[12])) print *,'err9'
if(any(ubound(i1)/=[16])) print *,'err10'
!$omp task
!$omp task
!$omp task
!$omp task
if(any(lbound(i1)/=[12])) print *,'err11'
if(any(ubound(i1)/=[16])) print *,'err12'
!$omp endtask
!$omp endtask
!$omp endtask
!$omp endtask
end subroutine

end 
