subroutine sub
integer(8):: k=11
integer(4):: kk=11
namelist /nam/i,j
data i,j/1,2/
write(10,nam)
write(k,*) 1
write(kk,*) 1
end
call sub
print *,'pass'
end
