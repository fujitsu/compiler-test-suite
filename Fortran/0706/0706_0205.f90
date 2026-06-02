 call s1
 print *,'pass'
 end
module m1
contains
 subroutine x1(a)
 integer::a(:,:)
 if (any(shape(a)/=(/1,1/)))print *,'fail'
 if (any(     (a)/=reshape((/1,1/),(/1,1/))))print *,'fail'
 end subroutine
 subroutine y1(a)
 integer::a(1,1)
 if (any(shape(a)/=(/1,1/)))print *,'fail'
 if (any(     (a)/=reshape((/1,1/),(/1,1/))))print *,'fail'
 end subroutine
 subroutine x2(a)
 character(*)::a(:,:)
 if (len(a)/=5)print *,'fail'
 if (any(shape(a)/=(/1,1/)))print *,'fail'
 if (any(     (a)/=reshape((/'71234'/),(/1,1/))))print *,'fail'
 end subroutine
 subroutine y2(a)
 character(*)::a(1,1)
 if (len(a)/=5)print *,'fail'
 if (any(shape(a)/=(/1,1/)))print *,'fail'
 if (any(     (a)/=reshape((/'71234'/),(/1,1/))))print *,'fail'
 end subroutine
 function RE(a,b) result(r)
 character(*),dimension(:,:)::a
 integer(4), dimension(2)::b
 character(len(a)),dimension(size(a,1),size(a,2))::r
 r=reshape(a,b)
 end function
 end
 subroutine s1
use m1
character*4 ::xx(1,1)='7123'
 call ss0
 call ss1(xx,'71234','4')
 call ss2(xx,'71234','4')
 call ss3(xx,'71234','4')
contains
 subroutine ss0
   if (any(index('71234',RESHAPE(xx,(/1,1/))//'4')/=1))print *,'fail'
   call x1(index('71234',RESHAPE(xx,(/1,1/))//'4'))   
   call y1(index('71234',RESHAPE(xx,(/1,1/))//'4'))   
   if (any(index('71234',RE     (xx,(/1,1/))//'4')/=1))print *,'fail'
   call x1(index('71234',RE     (xx,(/1,1/))//'4'))   
   call y1(index('71234',RE     (xx,(/1,1/))//'4'))   
   if (any(             RESHAPE(xx,(/1,1/))//'4'/='71234'))print *,'fail'
   call x2(             RESHAPE(xx,(/1,1/))//'4')   
   call y2(             RESHAPE(xx,(/1,1/))//'4')   
   if (any(             RE     (xx,(/1,1/))//'4'/='71234'))print *,'fail'
   call x2(             RE     (xx,(/1,1/))//'4')   
   call y2(             RE     (xx,(/1,1/))//'4')   
end subroutine
 subroutine ss1(xx,a1,a2)
character(*)::xx(:,:),a1,a2
   if (any(index(a1,RESHAPE(xx,(/1,1/))//a2)/=1))print *,'fail'
   call x1(index(a1,RESHAPE(xx,(/1,1/))//a2))   
   call y1(index(a1,RESHAPE(xx,(/1,1/))//a2))   
   if (any(index(a1,RE     (xx,(/1,1/))//a2)/=1))print *,'fail'
   call x1(index(a1,RE     (xx,(/1,1/))//a2))   
   call y1(index(a1,RE     (xx,(/1,1/))//a2))   
   if (any(             RESHAPE(xx,(/1,1/))//a2/=a1))print *,'fail'
   call x2(             RESHAPE(xx,(/1,1/))//a2)   
   call y2(             RESHAPE(xx,(/1,1/))//a2)   
   if (any(             RE     (xx,(/1,1/))//a2/=a1))print *,'fail'
   call x2(             RE     (xx,(/1,1/))//a2)   
   call y2(             RE     (xx,(/1,1/))//a2)   
end subroutine
 subroutine ss2(xx,a1,a2)
character(*)::xx(:,:),a1,a2
i1=1;j1=len(a1)
i2=1;j2=len(xx)
i3=1;j3=len(a2)
   if (any(index(a1(i1:j1),RESHAPE(xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3))/=1))print *,'fail'
   call x1(index(a1(i1:j1),RESHAPE(xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3)))   
   call y1(index(a1(i1:j1),RESHAPE(xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3)))   
   if (any(index(a1(i1:j1),RE     (xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3))/=1))print *,'fail'
   call x1(index(a1(i1:j1),RE     (xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3)))   
   call y1(index(a1(i1:j1),RE     (xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3)))   
   if (any(             RESHAPE(xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3)/=a1(i1:j1)))print *,'fail'
   call x2(             RESHAPE(xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3))   
   call y2(             RESHAPE(xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3))   
   if (any(             RE     (xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3)/=a1(i1:j1)))print *,'fail'
   call x2(             RE     (xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3))   
   call y2(             RE     (xx(:,:)(i2:j2),(/1,1/))//a2(i3:j3))   
end subroutine
 subroutine ss3(xx,a1,a2)
character(*)::xx(:,:),a1,a2
integer,dimension(:),pointer::v
allocate(v(1));v=1
i1=1;j1=len(a1)
i2=1;j2=len(xx)
i3=1;j3=len(a2)
   if (any(index(a1(i1:j1),RESHAPE(xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3))/=1))print *,'fail'
   call x1(index(a1(i1:j1),RESHAPE(xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3)))   
   call y1(index(a1(i1:j1),RESHAPE(xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3)))   
   if (any(index(a1(i1:j1),RE     (xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3))/=1))print *,'fail'
   call x1(index(a1(i1:j1),RE     (xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3)))   
   call y1(index(a1(i1:j1),RE     (xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3)))   
   if (any(             RESHAPE(xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3)/=a1(i1:j1)))print *,'fail'
   call x2(             RESHAPE(xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3))   
   call y2(             RESHAPE(xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3))   
   if (any(             RE     (xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3)/=a1(i1:j1)))print *,'fail'
   call x2(             RE     (xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3))   
   call y2(             RE     (xx(v,v)(i2:j2),(/1,1/))//a2(i3:j3))   
end subroutine
END 
