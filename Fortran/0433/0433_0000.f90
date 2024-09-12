  integer,parameter::cnt(1,1,1,1,1,1,1,1,2)=1
  integer,parameter::i(1,1,1,1,1,1,1,1,2)=eoshift(array=cnt,shift=1)
if (any(i/=0)) print *,101
print *,'pass'
end

