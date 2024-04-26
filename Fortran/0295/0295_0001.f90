subroutine s1
common /com/i,j
namelist /nam/ i,j
!$omp threadprivate(/com/)
i=1
j=2
write(1,nam)
end
call s1
print *,'pass'
end
