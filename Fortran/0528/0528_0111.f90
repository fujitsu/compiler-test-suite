subroutine s1(n,nn)
     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1(:),a2(:) 
     type (t2)::v=t2(-1_8,-2_8)
     allocate(a1(2),stat=n)                       
     allocate(a1(2)%y1,source=v,stat=nn)
     select type (d=>a1(2)%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
end
call  s1(n,nn)
if (n/=0) print *,90
if (nn/=0) print *,901
     print *,'pass'
     end

