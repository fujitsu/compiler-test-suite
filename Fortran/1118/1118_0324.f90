call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
call sub1(1.eq.1)
end
subroutine sub1(a)
logical a
!$omp task if(a)
!$omp parallel if(a)
if(a.neqv..true.) print *,"fail"
!$omp endparallel
!$omp endtask
end
subroutine bbbbb
logical*1 l1(5)
logical*2 l2(5)
logical*4 l4(5)
logical*8 l8(5)
l1=(/.true.,.false.,.true.,.false.,.true./)
l2=(/.true.,.false.,.true.,.false.,.true./)
l4=(/.true.,.false.,.true.,.false.,.true./)
l8=(/.true.,.false.,.true.,.false.,.true./)
call sub21(l1)
call sub22(l2)
call sub24(l4)
call sub28(l8)
end
subroutine sub21(a)
logical*1  a(5)
do i=1,5
!$omp task if(a(i))
!$omp parallel if(a(i))
if(a(1).neqv..true.) print *,"fail"
if(a(3).neqv..true.) print *,"fail"
if(a(5).neqv..true.) print *,"fail"
!$omp endparallel
!$omp endtask
enddo
end
subroutine sub22(a)
logical*2 a(5)
do i=1,5
!$omp task if(a(i))
!$omp parallel if(a(i))
if(a(1).neqv..true.) print *,"fail"
if(a(3).neqv..true.) print *,"fail"
if(a(5).neqv..true.) print *,"fail"
!$omp endparallel
!$omp endtask
enddo
end
subroutine sub24(a)
logical a(5)
do i=1,5
!$omp task if(a(i))
!$omp parallel if(a(i))
if(a(1).neqv..true.) print *,"fail"
if(a(3).neqv..true.) print *,"fail"
if(a(5).neqv..true.) print *,"fail"
!$omp endparallel
!$omp endtask
enddo
end
subroutine sub28(a)
logical*8 a(5)
do i=1,5
!$omp task if(a(i))
!$omp parallel if(a(i))
if(a(1).neqv..true.) print *,"fail"
if(a(3).neqv..true.) print *,"fail"
if(a(5).neqv..true.) print *,"fail"
!$omp endparallel
!$omp endtask
enddo
end
