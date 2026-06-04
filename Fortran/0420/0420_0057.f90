subroutine x(i)
pointer ::a
!$omp threadprivate(a)
procedure() :: a
save a
external:: sub,subx
integer:: omp_get_thread_num,i(2)
!$omp parallel
if (omp_get_thread_num()==0) then
a=>sub
call a(i(1))
else
a=>subx
call a(i(2))
endif
!$omp end parallel
end
subroutine subx(k)
k=1
end
subroutine sub(k)
k=1
end
integer ::i(2)=0
call x(i)
if (any(i==0)) print *,101
print *,'pass'
end
