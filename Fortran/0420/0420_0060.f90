subroutine ss2
external ::a,x
pointer:: a
!$omp threadprivate(a)
save a
a=>x
call a
end
subroutine x
end
call ss2
print *,'pass'
end
