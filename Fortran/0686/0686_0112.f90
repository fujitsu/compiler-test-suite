integer,target::t1(5)

type str1
  integer,pointer,dimension(:)::ptr1
end type str1
type (str1) aaa

t1=(/10,20,30,40,50/)
aaa%ptr1=>t1
!$omp parallel workshare
forall (i=1:4)
  aaa%ptr1(i+1) = t1(i)
endforall
!$omp end parallel workshare
if(any(aaa%ptr1/=(/10,10,20,30,40/))) print *,"fail"
if(any(      t1/=(/10,10,20,30,40/))) print *,"fail"
print *,'pass'
end
