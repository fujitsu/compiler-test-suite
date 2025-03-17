subroutine sub
save a,b,c,x
!$omp threadprivate(a,x)
!$omp threadprivate(b,c)
a=0;b=0;c=0;x=0
write(1,*)a,b,c,x
end
call sub
print *,'pass'
end
