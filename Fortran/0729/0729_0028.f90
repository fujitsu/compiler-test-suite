    subroutine sub(a,i,j,k,kk,kkk)
   dimension a(2:3,i:j)
   k=lbound(a,dim=i)
   kk=ubound(a,dim=i)
   kkk=ubound(a,dim=lbound(a,dim=i)+lbound(a,dim=i))
   call sub1(a)
   call sub2(a)
   call sub3
   call sub4
    contains 
 subroutine sub1(x)
   dimension x(:,:)
if( lbound(x,dim=i)/=1)write(6,*) "NG"
if(ubound(x,dim=i)/=0)write(6,*) "NG"
if(ubound(x,dim=lbound(x,dim=i)+lbound(x,dim=i))/=0)write(6,*) "NG"
 end subroutine sub1
 subroutine sub2(x)
   dimension x(2:3,i:j,*)
if( lbound(x,dim=i)/=1)write(6,*) "NG"
if(ubound(x,dim=i)/=0)write(6,*) "NG"
if(ubound(x,dim=lbound(x,dim=i)+lbound(x,dim=i))/=0)write(6,*) "NG"
 end subroutine sub2
 subroutine sub3()
   real,pointer:: x(:,:)
allocate(x(2:3,i:j))
if( lbound(x,dim=i)/=1)write(6,*) "NG"
if(ubound(x,dim=i)/=0)write(6,*) "NG"
if(ubound(x,dim=lbound(x,dim=i)+lbound(x,dim=i))/=0)write(6,*) "NG"
 call sub5(x)
 end subroutine 
 subroutine sub4()
   real,allocatable:: x(:,:)
allocate(x(2:3,i:j))
if( lbound(x,dim=i)/=1)write(6,*) "NG"
if(ubound(x,dim=i)/=0)write(6,*) "NG"
if(ubound(x,dim=lbound(x,dim=i)+lbound(x,dim=i))/=0)write(6,*) "NG"
 end subroutine 
 subroutine sub5(x)
   real,pointer:: x(:,:)
if( lbound(x,dim=i)/=1)write(6,*) "NG"
if(ubound(x,dim=i)/=0)write(6,*) "NG"
if(ubound(x,dim=lbound(x,dim=i)+lbound(x,dim=i))/=0)write(6,*) "NG"
call sub6
 end subroutine 
 subroutine sub6
if( lbound(x(),dim=i)/=1)write(6,*) "NG"
if(ubound(x(),dim=i)/=0)write(6,*) "NG"
if(ubound(x(),dim=lbound(x(),dim=i)+lbound(x(),dim=i))/=0)write(6,*) "NG"
 end subroutine 
 function x()
 real,pointer:: x(:,:)
 allocate(x(2:3,i:j))
 end function 
    end
   dimension a(3)
 do i=1,1000
    call sub(a,2,-3,k,kk,kkk)
   if (k/=1)write(6,*) "NG"
   if (kk/=0)write(6,*) "NG"
   if (kkk/=0)write(6,*) "NG"
end do

print *,'pass'
   end
