do j=1,5
call s1(j)
enddo
do j=1,5
call s2(j)
enddo
do j=1,5
call s3(j)
enddo
print *,'pass'
end
subroutine s1(k)
equivalence(i,j)
common /kj1/j
i=i+1
if (k/=i)print *,'error'
end
subroutine s2(k)
equivalence(i,ii,jj,j)
save i , j ,ii,jj
data j/0/
i=i+1
if (k/=i)print *,'error'
end
subroutine s3(k)
equivalence(i,ii,jj,j)
save         i,jj
data j/0/
i=i+1
if (k/=i)print *,'error'
end
block data
common /kj1/j
data j/0/
end
