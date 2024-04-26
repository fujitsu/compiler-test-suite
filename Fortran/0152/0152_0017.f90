procedure(character(kind=4))::a1
procedure(character(kind=1))::a2
procedure(character(kind=4,len=2))::a3
procedure(character*2)::a4
if(a1()/=4_"1") print *,'err'
if(a2()/=1_"1") print *,'err'
if(a3()/=4_"12") print *,'err'
if(a4()/=1_"12") print *,'err'
print *,'pass'
end
character(*,4) function a1() result(ch)
ch=4_"1234567890"
end function
character(*,1)function a2() result(ch)
ch=1_"1234567890"
end function
character(*,4)function a3() result(ch)
ch=1_"1234567890"
end function
character(*,1)function a4() result(ch)
ch=1_"1234567890"
end function
