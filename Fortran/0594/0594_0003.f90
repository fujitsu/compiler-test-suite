subroutine s1
  character,parameter::ccc(2,3)="1"
  character,parameter::ccc2(5)="1"
  character,parameter::ccc3(2,3,2)="1"
  integer,parameter::res(2)=findloc(ccc,"0")
  integer,parameter::res2(1)=findloc(ccc2,"0")
  integer,parameter::res3(3)=findloc(ccc3,"0")
  integer::res1(2)
  integer::res4(1)
  integer::res5(3)
  res1=findloc(ccc,"0")
  res4= findloc(ccc2,"2")
  res5= findloc(ccc3,"3")
if (any(res/=0)) then
  print *,1010
  print *,res
endif
if (any(res1/=0)) then
  print *,1011
  print *,res1
endif
if (any(res2/=0)) then
  print *,1012
  print *,res2
endif
if (any(res4/=0)) then
  print *,1013
  print *,res4
endif
if (any(res3/=0)) then
  print *,1014
  print *,res3
endif
if (any(res5/=0)) then
  print *,1015
  print *,res5
endif
end
call s1
print *,'pass'
  end

