subroutine s1

a=1
!$omp parallel private(a) 

associate ( x=> a )
  x=2
end associate

if (a/= 2) print *,101

!$omp end parallel
if (a/= 1) print *,102

end

call s1
print *,'pass'
end
