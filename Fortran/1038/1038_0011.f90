call s2
print *,'pass'
end
subroutine s1
equivalence(i,j)
entry s2
save i , j
i=i+1
end
