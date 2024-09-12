       implicit none 
       integer :: stat2(2)
       character(len=5) :: ch_msg
       logical :: ll = .false.
       type ty
       integer :: jj
       end type
       type(ty) :: obj
       character(len = 100 ) :: chcom
       chcom ="echo 'EXECUTE COMMAND LINE'"
       obj%jj = -400
       
       

       call EXECUTE_COMMAND_LINE(chcom,.not. ll,obj%jj, stat2(1), ch_msg)
  
  if(stat2(1)<0)print*,"101"
  if(stat2(1)>0)print*,"102"
  if(stat2(1)==0)print*,"PASS"
  
  end

