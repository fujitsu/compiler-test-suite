integer,parameter::i=0,j=0
integer,parameter::k=i**j
kk=i**j
write(4,*)k,kk
rewind 4
read (4,*)n,nn
if (n/=1)print *,'Error-1'
if (nn/=1)print *,'Error-2'
print *,'pass'
end
