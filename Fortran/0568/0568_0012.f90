type ty
integer :: kk,ll
LOGICAL :: LOG
end type ty
type(ty) :: obj
        INTEGER :: CSTAT(2,3,4)
CHARACTER(len = 100) :: CMSG(2,2)
character(len = 50) :: cmdid(2,3)
        obj%kk =3 ;
        obj%ll =1 ;
        obj%LOG = .FALSE. ;
cmdid(:,:) = "echo EXECUTE COMMAND LINE"
call execute_command_line(cmdid(1,obj%kk),WAIT = obj%LOG,CMDSTAT = CSTAT(1,obj%ll+obj%ll,3),CMDMSG = CMSG(1,1))
IF (CSTAT(1,2,3) > 0)PRINT *, "101"
IF (CSTAT(1,2,3) == -1)PRINT *, "102", CSTAT
IF (CSTAT(1,2,3) == -2)PRINT *, "PASS"
IF (CSTAT(1,2,3) == 0)PRINT *, "PASS"
END
