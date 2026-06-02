integer(8)::k
k= int(b'&
&101100111000111100001111100000111111000000111111100000001111111100000000&
&',kind=8)
write(1,  '(b64.64)')k
rewind 1
call chk
print *,'pass'
end
subroutine chk
character(64),parameter::x='1000111100001111100000111111000000111111100000001111111100000000'
character(64):: z
rewind 1
read(1,'(a)')z
if (z/=x) print *,z
end
