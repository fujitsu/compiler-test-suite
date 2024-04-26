call subb()
print *,'pass'
end
subroutine subb()
i=1
!$omp atomic
i=i+1
end
