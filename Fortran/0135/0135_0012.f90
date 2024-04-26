
subroutine s01
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r8=matmul(r81,r82)  
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end

subroutine s02
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))
r8=matmul(r81,r82)   
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end

subroutine s03
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

r8=matmul(r81,r82)   
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end

subroutine s04
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

r8=matmul(r81,r82)    
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end
subroutine s05
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

r8=matmul(r81,r82)    
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end
subroutine s06
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))

r8=matmul(r81,r82)    
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end
subroutine s07
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))


r8=matmul(r81,r82)    
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end
subroutine s08
real(8)::r81(3),r82(3,4)
real(8)::r8(4)
r81=reshape((/(i,i=11,14)/),(/3/))
r82=reshape((/(i,i=21,32)/),(/3,4/))


r8=matmul(r81,r82)    
if (any(abs((/r8/)-(/794,902,1010,1118/))>10.))print *,101
end
call s01
call s02
call s03
call s04
call s05
call s06
call s07
call s08
print *,'pass'
end
