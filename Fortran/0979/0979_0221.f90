print *,"pass"
end
subroutine test01()
intrinsic command_argument_count
i=command_argument_count()
i=i
end
subroutine test02()
integer command_argument_count
i=command_argument_count()
i=i
end
subroutine test03()
character command_argument_count
i=command_argument_count()
i=i
end

subroutine test04()
intrinsic command_argument_count
integer command_argument_count
i=command_argument_count()
i=i
end

subroutine test05()
integer command_argument_count
intrinsic command_argument_count
i=command_argument_count()
i=i
end


