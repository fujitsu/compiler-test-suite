subroutine s1
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
r8=matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/908,944,980,1016/))>10.))print *,201
end
subroutine s2
real(8)::r81(4,3),r82(3),r83(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=21,32)/),(/4,3/))
r82=reshape((/(i,i=11,14)/),(/3/))
r83=reshape((/(i,i=21,32)/),(/3,4/))
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/908,944,980,1016/))>10.))print *,2
r8=matmul(transpose(r83),r82)
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,1
end
subroutine s3
real(8)::r81(4,3),r82(3,2),r83(2,3)
real(8)::r8(4,2)
r81=reshape((/(i,i=21,32)/),(/4,3/))
r82=reshape((/(i,i=11,16)/),(/3,2/))
r83=reshape((/(i,i=21,26)/),(/2,3/))
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/908,944,980,1016,1133,1178,1223,1268/))>10.))print *,301
r8=matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/1741,1810,1879,1948,1816,1888,1960,2032/))>10.))print *,302
end
call s1
call s2
call s3
print *,'pass'
end
