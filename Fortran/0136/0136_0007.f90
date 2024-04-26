character(kind=1,len=:),allocatable::i
character(kind=1,len=0),allocatable::j
character(:,1_8),allocatable::k
allocate(character(kind=1,len=2)::i)
allocate(character(0,1)::j)
allocate(character(len(i))::k)
i="12"
j=""
if(i/=1_"12") print *,'err1'
if(j/="") print *,'err2'
if(len(k)/=2) print *,'err3'
deallocate(i,j,k)
print *,'pass'
end
