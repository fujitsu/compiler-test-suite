        1 integer,target::x(5)= [1,2,3,4,5]
        2 integer,pointer::ptr(:)
        3 ptr=>x
        4  call sub(ptr(:))
        6  print*,"pass"
        7   contains
        8   subroutine sub(dmy)
        9   integer::dmy(5)
       10   if(any(dmy.ne.[1,2,3,4,5]))print*,"101"
       11   end subroutine
       12   end
