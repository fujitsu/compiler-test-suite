print *,"pass"
end

subroutine test()
intrinsic :: get_environment_variable
character cha,cha2
logical  :: log
call get_environment_variable(cha,cha2,iii,iii2,log)
call get_environment_variable(name=cha,value=cha2,length=iii,status=iii2,trim_name=log)
cha=cha
cha2=cha2
iii=iii
iii2=iii2
log=log
end
