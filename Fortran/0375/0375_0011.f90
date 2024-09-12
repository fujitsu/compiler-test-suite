subroutine sub
integer(8):: k=2
integer(4):: kk=2
namelist /nam/i,j
data i,j/1,2/
write(1,nam)
write(k,*) 1
write(kk,*) 1
end
call sub
print *,'pass'
end
