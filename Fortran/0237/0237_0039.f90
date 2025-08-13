real(8),parameter::a8=mod(-huge(1._8)-1._8,-1._8)
real(8)::b8=mod(-huge(1._8)-1._8,-1._8)
real(16),parameter::a=mod(-huge(1._16)-1._16,-1._16)
real(16)::b=mod(-huge(1._16)-1._16,-1._16)

write(113,'(z16.16)')a8
write(113,'(z16.16)')b8
write(113,'(z16.16)')mod(-huge(1._8)-1._8,-1._8)
write(113,'(z32.32)')a
write(113,'(z32.32)')b
write(113,'(z32.32)')mod(-huge(1._16)-1._16,-1._16)
call chk
print *,'pass'
end
subroutine chk
character(16),parameter::fa='FFEFFFFFFFFFFFFF'
character(16),parameter::fb='0000000000000000'
character(32),parameter::fc='FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
character(32),parameter::fd='00000000000000000000000000000000'
character(32)::r1,r2*16
rewind 113
read (113,'(a)') r2;if (r2/=fa)print *,101
read (113,'(a)') r2;if (r2/=fa)print *,102
read (113,'(a)') r2;if (r2/=fb)print *,103
read (113,'(a)') r1;if (r1/=fc)print *,121
read (113,'(a)') r1;if (r1/=fc)print *,122
read (113,'(a)') r1;if (r1/=fd)print *,123
end
