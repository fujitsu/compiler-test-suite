subroutine s1
real(16),parameter::q0=0._16
real(16),parameter::q1=1._16
real(16),parameter::q2=-q1
real(16),parameter::w1=q0-q1
real(16) ::v1=q1
write(1,'(z32.32)') -v1
write(1,'(z32.32)') -q1
write(1,'(z32.32)')  q2

write(1,'(z32.32)') w1
write(1,'(z32.32)') q0-v1
write(1,'(z32.32)') q0-q1
end
subroutine s2
real(16),parameter::q0=0._16
real(16),parameter::q1=0._16
real(16),parameter::q2=-q1
real(16),parameter::w1=q0-q1
real(16) ::v1=q1
write(2,'(z32.32)') -v1
write(2,'(z32.32)') -q1
write(2,'(z32.32)')  q2

write(2,'(z32.32)') w1
write(2,'(z32.32)') q0-v1
write(2,'(z32.32)') q0-q1
end
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
character(32):: r
character(32),parameter:: b='BFFF0000000000000000000000000000'
character(32),parameter:: c='80000000000000000000000000000000'
character(32),parameter:: d='00000000000000000000000000000000'
rewind 1
read(1,'(a)') r;if(r/=b) print *,101
read(1,'(a)') r;if(r/=b) print *,102
read(1,'(a)') r;if(r/=b) print *,103
read(1,'(a)') r;if(r/=b) print *,104
read(1,'(a)') r;if(r/=b) print *,105
read(1,'(a)') r;if(r/=b) print *,106

rewind 2
read(2,'(a)') r;if(r/=c) print *,201
read(2,'(a)') r;if(r/=c) print *,202
read(2,'(a)') r;if(r/=c) print *,203
read(2,'(a)') r;if(r/=d) print *,204
read(2,'(a)') r;if(r/=d) print *,205
read(2,'(a)') r;if(r/=d) print *,206
end
