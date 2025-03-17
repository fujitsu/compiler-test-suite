common /a/i,j
if (i/=1)write(6,*) "NG"
print *,'pass'
end
block data
common /a/i,j
data i/1/
end
