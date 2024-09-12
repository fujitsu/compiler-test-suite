subroutine s1
integer x(2),v(2)
x(2)=1
v(2)=1
!$omp atomic update
x(2)=x(2)+1
!$omp end atomic
end subroutine
call s1
print *,'pass'
end

