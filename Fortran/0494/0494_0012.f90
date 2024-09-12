integer(8),parameter::i8=9223372036854775807_8
real(2),parameter::r2p=i8
real(2)          ::r21=i8
real(2)          ::r22
r22=i8
write(1,*)real(r2p,4)
write(1,*)real(r21,4)
write(1,*)real(r22,4)
print *,'pass'
end
