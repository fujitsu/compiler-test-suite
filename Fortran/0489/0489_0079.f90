subroutine s1
INTEGER :: CSTAT
CHARACTER(len = 100) :: CMSG
call execute_command_line("echo EXECUTE COMMAND LINE",WAIT = .FALSE.,CMDSTAT = CSTAT,CMDMSG = CMSG)
IF (CSTAT > 0) THEN
PRINT *, "101", TRIM(CMSG)
ELSE IF (CSTAT < 0) THEN
if (CSTAT/=-2) PRINT *, "102", TRIM(CMSG)
PRINT *, 'pass'
ELSE
PRINT *, "102", TRIM(CMSG)
END IF
END
PRINT *, 'pass'
end
