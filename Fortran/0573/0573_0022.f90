integer,allocatable::x(:,:)       
call sub(NULL(x))
call sub(NULL())
         print*,"pass"

         contains
         subroutine sub(dmy)
       integer,allocatable:: dmy(:,:)
         allocate(dmy(10,10))
         dmy =10
         if(dmy(1,1).ne.10)print*,"101"
         if(dmy(10,10).ne.10)print*,"102"
         end subroutine
         end

