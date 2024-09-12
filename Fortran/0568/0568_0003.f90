INTEGER :: CSTAT,ESTAT
CHARACTER(len = :),allocatable :: CMSG
character(len = :),allocatable :: cmdid
allocate(character(len=100) :: CMSG)
allocate(character(len = 50) :: cmdid)

cmdid = "echo 'EXECUTE COMMAND LINE'"

call execute_command_line("echo 'EXECUTE COMMAND LINE'",WAIT = .TRUE.,EXITSTAT=ESTAT,CMDSTAT = CSTAT,CMDMSG = CMSG)
call execute_command_line("echo 'EXECUTE COMMAND LINE'")
call execute_command_line(cmdid,WAIT = .TRUE.,EXITSTAT=ESTAT,CMDSTAT = CSTAT,CMDMSG = CMSG)
IF (CSTAT > 0) THEN
PRINT *, "101", CMSG
ELSE IF (CSTAT < 0) THEN
PRINT *, "102",CSTAT
ELSE
PRINT *, "PASS"
END IF
END
