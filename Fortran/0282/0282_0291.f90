  integer,parameter::i=4
  character(kind=4),parameter::a*2=min(i_"",i_"1",i_"2")
  integer :: k = kind(min(i_"1",i_"1",i_"2"))
  if(a/= min(i_"",i_"1",i_"2")) print *,'101'
  if(k/= kind(min(i_"1",i_"1",i_"2")))  print *,'102'
  print *,'PASS'
end
