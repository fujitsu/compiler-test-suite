subroutine s1
integer :: ESTAT,CSTAT
character(len = 100) :: arr(2)
call execute_command_line("echo 'EXECUTE COMMAND LINE'",.false.,ESTAT,CSTAT,arr(2))
if (CSTAT<0) print *,"101",CSTAT
end
print *, "pass"
end


