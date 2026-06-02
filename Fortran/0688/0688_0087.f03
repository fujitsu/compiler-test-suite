call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
logical(1)::l1(2)=.true.
logical(2)::l2(2)=.true.

!$omp atomic write
l1(2)=l2(1).neqv.l1(1)

end
subroutine s2
logical(1)::l1=.true.
logical(2)::l2=.true.
logical(4)::l4=.true.

!$omp atomic read
l1=l2
!$omp atomic
l1=l2.neqv.l1

!$omp atomic write
l1=l2.neqv.l4

!$omp atomic capture
l1=l2.neqv.l1
l4=l1
!$omp end atomic

!$omp atomic capture
l4=l1
l1=l2.neqv.l1
!$omp end atomic
end
subroutine s3
logical(4)::l1=.true.
logical(4)::l2=.true.
logical(4)::l4=.true.

!$omp atomic capture
l4=l1
l1=l2.neqv.l1
!$omp end atomic
if(l1.neqv..false.) print *,'err'
if(l4.neqv..true.) print *,'err'
end
subroutine s4
logical(1)::l1=.true.
logical(2)::l2=.true.
logical(4)::l4=.true.

!$omp atomic capture
l4=l1
l1=l2.neqv.l1
!$omp end atomic
if(l1.neqv..false.) print *,'err'
if(l4.neqv..true.) print *,'err'
end
