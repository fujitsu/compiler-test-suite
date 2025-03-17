call s1
call s2
call s3
print *,'pass'
end
subroutine s1
equivalence (i,j)
save i , j
i=i+1
end
subroutine s2
equivalence (i,j)
save i 
i=i+1
end
subroutine s3
equivalence (i,j)
save j 
i=i+1
end
