subroutine ss2
procedure(integer),pointer ::a
integer,external::x
save a
!$omp threadprivate(a)
a=>x
if (a(1)/=1)print *,2001
end
integer function x(k)
x=k
end
call ss2
print *,'pass'
end
