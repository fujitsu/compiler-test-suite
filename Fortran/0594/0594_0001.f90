subroutine s1
  character,parameter::ccc(2,3)="1"
  integer,parameter::res(2)=findloc(ccc,"0")
  integer::res1(2)
  res1=findloc(ccc,"0")
if (any(res/=0)) then
  print *,1010
  print *,res
endif
if (any(res1/=0)) then
  print *,1011
  print *,res1
endif
end
call s1
print *,'pass'
  end

