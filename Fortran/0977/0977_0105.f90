subroutine s1
save /name/
common /name/i,j
data k1/1/
save k2
data k2/1/
data k3/1/
save k3
i=i+1
j=j+1
k1=k1+1
k2=k2+1
k3=k3+1
end
call s1
print *,'pass'
end
block data
common /name/i,j
data i,j/0,0/
end
