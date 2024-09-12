       module m1
       integer,target::t1=20
       complex,target::t2 =(1,2)
       character*3,target::t3(3) = ["abc", "efg" ,"pqr"]
       type ty
         procedure(sub),pointer,nopass::ptr2=>sub
         integer,pointer::ptr=>t1
         real,pointer::ptr3=>t2%re
         procedure(E1),pointer,nopass::ptr4=>E1
         character(:),pointer::ptr5(:)=>t3(1:3:2)(1:2)
       end type 
       type(ty)::obj9
       contains
       subroutine sub()
         entry E1()
         print*,"PASS"
       end subroutine
       end 
       module m2
       integer,target::t1=30
       complex,target::t2 =(11,12)
       character*3,target::t3(3) = ["rty", "ent" ,"pfr"]
       type ty1
         integer::a
         real::b
         integer,pointer::ptr=>t1
         procedure(sub2),pointer,nopass::ptr2=>sub2
         character::c
         real,pointer::ptr3=>t2%re
         procedure(E1),pointer,nopass::ptr4=>E1
         character(:),pointer::ptr5(:)=>t3(1:3:1)(1:2)
       end type 
       type(ty1)::obj8
       contains
       subroutine sub2()
         entry E1()
         print*,"PASS"
       end subroutine
       end

      

       USE m1, only :obj9
       USE m2,only :obj8
       if(obj9%ptr.ne.20)print*,"101"
       if(obj8%ptr.ne.30)print*,"102"
       if(obj8%ptr3.ne.11)print*,"103"
       if(obj9%ptr3.ne.1)print*,"104"
       if(len(obj9%ptr5(1)).ne.2)print*,"105"
       if(len(obj8%ptr5(1)).ne.2)print*,"106"
       if(any(obj8%ptr5.ne.["rt", "en" ,"pf"]))print*,"107"
       if(any(obj9%ptr5.ne.["ab","pq" ]))print*,"107"
       call obj9%ptr2()
       call obj9%ptr4()
       call obj8%ptr2()
       call obj8%ptr4()
       print*,"PASS"
       end

