interface
integer function fun(d1,d2)
character(*),pointer,intent(in)::d1
character(*)::d2
end function
end interface
integer::i=4
character(LEN=4),target::ch1
character(LEN=15)::ch2
ch1="abcdefgh"
ch2="addfunction"
if (fun(ch1(:i),ch2(i:7)) == 10)print*,"Pass"
if (ch2 /= "addabcdtion")print*,103
end

integer function fun(dmy1,dmy2)
character(*),pointer,intent(in)::dmy1
character(*)::dmy2
if (.NOT.associated(dmy1))print*,"error",101
if (LEN(dmy1) /=  LEN(dmy2))print*,102
dmy2=dmy1
fun=10
end function
