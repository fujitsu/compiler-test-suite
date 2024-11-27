integer,parameter::i=0,j=0
integer,parameter::k=i**j
kk=i**j
write(1,*)k,kk
rewind 1
read (1,*)n,nn
if (n/=1)print *,'Error-1'
if (nn/=1)print *,'Error-2'
print *,'pass'
end
