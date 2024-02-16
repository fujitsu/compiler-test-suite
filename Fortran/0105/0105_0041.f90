subroutine s1
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=2.0*matmul(r81,r82)-r8
if (any(abs((/r8/)+cx+cx-(/&
1689.,1905.,2121.,2337.&
/))>10.))print *,101
r8=cx
r8=2.0*matmul(r81,transpose(r83))-r8
if (any(abs((/r8/)+cx+cx-(/&
1917.,1989.,2061.,2133.&
/))>10.))print *,201
end
subroutine s11
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=2*matmul(r81,r82)-r8
if (any(abs((/r8/)+cx+cx-(/&
1689.,1905.,2121.,2337.&
/))>10.))print *,101
r8=cx
r8=2*matmul(r81,transpose(r83))-r8
if (any(abs((/r8/)+cx+cx-(/&
1917.,1989.,2061.,2133.&
/))>10.))print *,201
end
subroutine s12
real(8)::r81(3),r82(3,4),r83(4,3)
real(8)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
k=2
r8=cx
r8=k*matmul(r81,r82)-r8
if (any(abs((/r8/)+cx+cx-(/&
1689.,1905.,2121.,2337.&
/))>10.))print *,101
r8=cx
r8=k*matmul(r81,transpose(r83))-r8
if (any(abs((/r8/)+cx+cx-(/&
1917.,1989.,2061.,2133.&
/))>10.))print *,101
end
subroutine s2
real(4)::r81(3),r82(3,4),r83(4,3)
real(4)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=2.0*matmul(r81,r82)-r8
if (any(abs((/r8/)+cx+cx-(/&
1689.,1905.,2121.,2337.&
/))>10.))print *,101
r8=cx
r8=2.*matmul(r81,transpose(r83))-r8
if (any(abs((/r8/)+cx+cx-(/&
1917.,1989.,2061.,2133.&
/))>10.))print *,101
end
subroutine s21
real(4)::r81(3),r82(3,4),r83(4,3)
real(4)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
r8=cx
r8=2.0*matmul(r81,r82)-r8
if (any(abs((/r8/)+cx+cx-(/&
1689.,1905.,2121.,2337.&
/))>10.))print *,101
r8=cx
r8=2.*matmul(r81,transpose(r83))-r8
if (any(abs((/r8/)+cx+cx-(/&
1917.,1989.,2061.,2133.&
/))>10.))print *,101
end
subroutine s22
real(4)::r81(3),r82(3,4),r83(4,3)
real(4)::r8(4)
real(8)::cx=(101,201)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r83=reshape((/(i,i=21,32)/),(/4,3/))
k=2
r8=cx
r8=k*matmul(r81,r82)-r8
if (any(abs((/r8/)+cx+cx-(/&
1689.,1905.,2121.,2337.&
/))>10.))print *,101
r8=cx
r8=k*matmul(r81,transpose(r83))-r8
if (any(abs((/r8/)+cx+cx-(/&
1917.,1989.,2061.,2133.&
/))>10.))print *,101
end
call s1
call s11
call s12
call s2
call s21
call s22
print *,'pass'
end
