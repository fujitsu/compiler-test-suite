integer,target::t1(5),t2(5)
integer,pointer::p1(:),p2(:)

t1=(/100,200,300,400,500/)
t2=(/100,200,300,400,500/)
p1=>t1
p2=>t2
!$omp parallel workshare
forall (i=1:4)
  p1(i+1) = t1(i) + 1
endforall
!$omp end parallel workshare
do  i=1,4 
  p2(i+1) = t2(i) + 1
enddo
if (any(t1/=(/100,101,201,301,401/))) print *,"fail"
if (any(p1/=(/100,101,201,301,401/))) print *,"fail"
if (any(t2/=(/100,101,102,103,104/))) print *,"fail"
print *,'pass'
end
