subroutine s1(n)
     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2(100)
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type tt1
        type (t3),allocatable::a1
     end type
     type tt2
        type (t3),allocatable::a2(:) 
     end type
   type ttt1
     type(tt1)::w1(2)
   end type
   type ttt2
     type(tt2)::w2(2)
   end type
     type(ttt1)::q1
     type(ttt2)::q2
     type (t2)::v=t2(-1_8,-2_8)
     integer, allocatable::x(:)
     allocate(q1%w1(2)%a1)                       
     allocate(q1%w1(2)%a1%y1,source=v)
     allocate(x(n))
     x=1
     k=0
     select type (d=>q1%w1(2)%a1%y1)
       type is (t2)
         d=v
         if (d%z1/=-1) print *,'NG1',d%z1
         if (d%z2(1)/=-2) print *,'NG2',d%z2(1)
         k=1
         if (any(x/=1)) print *,800,x
     end select
     if (k/=1) print *,900
     if (0==1) q2%w2(2)%a2=q1%w1(2)%a1
end
call s1(2)
     print *,'pass'
     end

