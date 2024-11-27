 call s1
 print *,'pass'
 end
 subroutine s1
 logical,parameter::t=.true.,f=.false.
 logical,dimension(3,2):: x=reshape((/t,f,f,t,t,f/),(/3,2/))
 logical,dimension(3,2)::xx=reshape((/f,f,t,t,f,t/),(/3,2/))
 integer,dimension(3,2)::y=-1,yy=-1,yyy=-1
 where (x)
   y=1
   where (xx)
     y=2
   end where
   yy=3
   where (xx)
     yy=4
   end where
   yyy=5
 end where
 if(any((/y/)/=(/1,-1,-1,2,1,-1/)))write(6,*) "NG"
 if(any((/yy/)/=(/3,-1,-1,4,3,-1/)))write(6,*) "NG"
 if(any((/yyy/)/=(/5,-1,-1,5,5,-1/)))write(6,*) "NG"
  y=-1;yy=-1;yyy=-1
 where (x)
   y=1
   where (xx)
     y=2
   end where
   yy=3
   where (xx)
     yy=4
   end where
   yyy=5
 end where
 if(any((/y/)/=(/1,-1,-1,2,1,-1/)))write(6,*) "NG"
 if(any((/yy/)/=(/3,-1,-1,4,3,-1/)))write(6,*) "NG"
 if(any((/yyy/)/=(/5,-1,-1,5,5,-1/)))write(6,*) "NG"
 end
