integer(8):: x=int(z'8000 0000 0000 0000',8) 
if (x/=-9223372036854775808_8) print *,101
print *,'pass'
end
