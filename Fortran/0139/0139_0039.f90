  integer,parameter::i=4
  character(kind=4),parameter::a*2=max(i_"",i_"1",i_"2")
  print *,'pass'
end
subroutine sub(c)
character(8):: c
write(6,'(z16.16)') c
end
