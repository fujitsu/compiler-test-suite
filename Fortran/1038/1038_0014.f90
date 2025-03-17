call s11
call s21
call s31
print *,'pass'
end
subroutine s1
equivalence (i,j)
save i , j
entry s11
i=i+1
end
subroutine s2
equivalence (i,j)
save i 
entry s21
i=i+1
end
subroutine s3
equivalence (i,j)
save j 
entry s31
i=i+1
end
