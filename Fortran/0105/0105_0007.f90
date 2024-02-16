subroutine s1
complex(8)::r8(4)
complex(8)::r81(3)
complex(8)::r82(3,4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=2.0*matmul(r81,r82)
if (any(abs((/r8/)-2*(/(-2381,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,101
end
call s1
print *,'pass'
end
