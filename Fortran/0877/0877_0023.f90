real(4),parameter:: a1=huge(1._4)
real(8),parameter:: b1=huge(1._8)
real(16),parameter:: c1=huge(1._16)
real(4),parameter:: a2=a1+a1
real(4),parameter:: b2=b1+b1
real(4),parameter:: c2=c1+c1
print *,a2
print *,b2
print *,c2
end
