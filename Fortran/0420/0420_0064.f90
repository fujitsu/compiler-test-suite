subroutine ss2
interface 
 subroutine x
 end subroutine
end interface
procedure(x),pointer ::a
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
