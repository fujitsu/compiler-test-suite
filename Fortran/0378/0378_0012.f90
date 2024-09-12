subroutine s1
complex(8)::r81(2,3),r82(3,2)
complex(8)::r8(2,2)
r81=reshape((/(cmplx(i,i),i=11,16)/),(/2,3/))
r82=reshape((/(cmplx(i,i),i=21,26)/),(/3,2/))
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/(0,1724),(0,1856),(0,1958),(0,2108)/))>1.))print *,r8
end
call s1
call s2
print *,'pass'
end
subroutine s2
complex(4)::r81(2,3),r82(3,2)
complex(4)::r8(2,2)
r81=reshape((/(cmplx(i,i),i=11,16)/),(/2,3/))
r82=reshape((/(cmplx(i,i),i=21,26)/),(/3,2/))
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/(0,1724),(0,1856),(0,1958),(0,2108)/))>1.))print *,r8
end
