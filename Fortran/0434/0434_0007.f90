complex(4),pointer::ppp(:,:,:,:,:,:,:)
complex(4)::qqq(1)
namelist /nnn/ppp
allocate(ppp(1,1,1,1,1,1,1),mold=cmplx(1,kind=4))
ppp=99
open(80,delim="quote")
write(80,nnn)
rewind 80
read(80,nnn)
qqq=[ppp]
print *,'pass'
end
