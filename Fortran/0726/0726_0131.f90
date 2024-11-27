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
   yy=y
   yyy=yy
 elsewhere (xx)
     y=2
   yy=y
   yyy=yy
 end where
 if(any((/y/)/=(/1,-1,2,1,1,2/)))write(6,*) "NG"
 if(any((/yy/)/=(/1,-1,2,1,1,2/)))write(6,*) "NG"
 if(any((/yyy/)/=(/1,-1,2,1,1,2/)))write(6,*) "NG"
 end
