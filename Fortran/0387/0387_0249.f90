interface
 function func1()
  character(len=10) :: func1
 end function
 function func2(i)
  character(len=10) :: i,func2
 end function
end interface

procedure(func1) :: pf1
character(len=10),external,pointer :: cpc
procedure(func1),pointer :: pfp1
procedure(func2),pointer :: pfp2
character(len=10) :: c1
character(len=9)  :: c2

pfp1=>func1
pfp2=>func2
c1=pfp1()
if (c1.ne.'1234567890') print *,'fail'

c1=pfp2(c1)
if (c1.ne.'1234567890') print *,'fail'

print *,'pass'

end

function func1()
 character(len=10) :: func1
 func1='1234567890'
end function

function func2(i)
 character(len=10) :: i,func2
 func2=i
end function

function pf1()
 character(len=10) :: pf1
 pf1='1234567890'
end function
