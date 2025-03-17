call s2
print *,'pass'
end
subroutine s1
integer,save:: i 
entry s2
write(1,*)i
end
