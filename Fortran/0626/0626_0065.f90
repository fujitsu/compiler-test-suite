interface get_command_argument
subroutine s(z)
optional::z
end subroutine
end interface get_command_argument
call get_command_argument()
print *,'pass'
end
subroutine s(z)
optional::z
end subroutine
