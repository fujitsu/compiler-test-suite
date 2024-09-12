   type ty
    integer::x1
     integer,pointer::ptr(:) 
     integer::x
   end type
   integer,target::t2(5) =[1,2,3,4,5]
   integer,parameter::y=12
   type(ty)::objt5 = ty(y,t2(1:5:2),y)
   if(any(objt5%ptr.ne.[1,3,5]))print*,"101"
   print*,"PASS"
   end

