call s()
print *,'pass'
end
subroutine s()
10 format (e11.5)
20 format (3i8,e12.5)
write(6,10) 3.0_4
write(6,20) 1,2,3,3.0_4
end
