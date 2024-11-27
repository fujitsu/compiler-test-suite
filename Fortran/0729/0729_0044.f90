call s1
print *,'pass'
end
subroutine s1
write(1,'(a65000)') repeat('a',65000)
end
