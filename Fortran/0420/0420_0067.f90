subroutine ss1
procedure() ::x
procedure(),pointer ::a
save a
!$omp threadprivate(a)
a=>x
call a
end
subroutine ss2
procedure(integer),pointer ::b
integer,external::y
save b
!$omp threadprivate(b)
b=>y
if (b()/=1)print *,2001
end
integer function y()
y=1
end
subroutine x
end
call ss1
call ss2
print *,'pass'
end
