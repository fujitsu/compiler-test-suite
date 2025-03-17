call s1
print *,'pass'
end
subroutine s1
equivalence(i,j)
save i , j
i=i+1
end
