subroutine ss2
procedure() ::a,x
pointer:: a
save a
!$omp threadprivate(a)
a=>x
call a
end
subroutine x
end
call ss2
print *,'pass'
end
