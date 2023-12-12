real(2) :: r1(2,2)=0
complex(kind=2) :: c1(2,2)=0
call sub(r1,c1)
print *,'pass'
contains
subroutine sub(dmy1,dmy2)
real(2)::dmy1(2,2),res1
complex(2)::dmy2(2,2),res2
res1=dmy1(1,1)
res2=dmy2(1,1)
end subroutine
End

