print *,"pass"
end

subroutine test()
intrinsic :: get_command
character cha
call get_command(cha,iii,iii2)
call get_command(command=cha,length=iii,status=iii2)
cha=cha
iii=iii
iii2=iii2
end
