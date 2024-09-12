type max
character(len=1)::i='3',j
end type
write(1,*)max('1'     , '2') 
rewind 1
read(1,*) n
if (n/=12) print *,101

  print *,'pass'
end
