print *,"pass"
end

subroutine test()
intrinsic :: get_command_argument
character cha
call get_command_argument(iii1,cha,iii,iii2)
call get_command_argument(number=iii1,value=cha,length=iii,status=iii2)
cha=cha
iii=iii
iii2=iii2
iii1=iii1
end
