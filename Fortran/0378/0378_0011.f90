real(8)::r81(2,3),r82(3,2)
real(4)::r8(2,2)
r81=reshape((/(i,i=11,16)/),(/2,3/))
r82=reshape((/(i,i=21,26)/),(/3,2/))
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/862,928,979,1054/))>10.))print *,1
print *,'pass'
end
