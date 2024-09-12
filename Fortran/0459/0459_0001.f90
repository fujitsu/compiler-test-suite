integer,parameter :: imax=2
  integer(8),parameter::cnt(3)=1
  integer,parameter::i(3)=eoshift(array=cnt,shift=1111111111_8)
print *,'pass'
end
