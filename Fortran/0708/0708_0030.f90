 call s1
 print *,'pass'
 end
subroutine s1
 call ss1
 call ss2
 call ss3
 call ss4
 call ss5
 call ss6
 call ss7
 call ss8
end
subroutine ss8
 integer a(3,3)
 a=reshape((/0,1,2,3,4,5,6,7,8/),(/3,3/))
 n=3
 forall(i=1:n-1)
   forall( j=i+1:n)
      a(i,j)=a(j,i)
   end forall
 end forall
 if(any(a/=reshape((/0,1,2,1,4,5,2,5,8/),(/3,3/))))print *,'fail'
end
subroutine ss7
 integer a(5,4),b(5,4)
 a=reshape((/0,1,2,1,0, 0,1,2,0,0, 0,1,0,2,0, 0,0,2,3,0/),(/5,4/))
 i=10000
 forall (i=1:5)
  where (a(i,:)==0)a(i,:)=i
  b(i,:)=i/a(i,:)
 end forall
 if (i/=10000)print *,'fail'
 if(any(a/=reshape((/1,1,2,1,5,1,1,2,4,5,1,1,3,2,5,1,2,2,3,5/),(/5,4/))))print *,'fail'
 if(any(b/=reshape((/1,2,1,4,1,1,2,1,1,1,1,2,1,2,1,1,1,1,1,1/),(/5,4/))))print *,'fail'
end
subroutine ss6
 integer a(5,4),b(5,4)
 integer ad(5,4),bd(5,4)
 kk=1
 do i1=1,5; do i2=1,4
 a(i1,i2)=mod(kk,2)
 ad(i1,i2)=mod(kk,2)
 kk=kk+1
 end do;end do
 i=10000
 forall (i=1:5)
  where (a(i,:)==0)a(i,:)=i
  b(i,:)=i/a(i,:)
 end forall
 if (i/=10000)print *,'fail'
 do i=1,5
  where (ad(i,:)==0)ad(i,:)=i
  bd(i,:)=i/ad(i,:)
 end do
 if (any(a/=ad))print *,'fail'
 if (any(b/=bd))print *,'fail'
end
subroutine ss5
 real ::a(11)=(/(i,i=-5,+5)/),x(11)=-9
 real ::                      y(11)=-9
 n=11
 forall (i=1:n,a(i)/=0.0)
  x(i)=1./a(i)
 endforall
 do i=1,n;if(a(i)/=0.0)then;else;cycle;endif
  y(i)=1./a(i)
 enddo
 if (any(x/=y))print *,'fail'
end 
subroutine ss4
 real ::a(10)=(/(i,i=2,11)/), b(10)=(/(i,i=1,10)/),c(10,10)=0,cc(10,10)=0
 forall( i=1:10,j=1:10 ,a(i)>5..and.b(j)<5.)
  c(i,j)=1
 end forall
 do i=1,10;doj=1,10 ;if (a(i)>5..and.b(j)<5.)then;else;cycle;endif
  cc(i,j)=1
 end do;end do
 if (any(c/=cc))print *,'fail'
end
subroutine ss3
 integer::x=-1
 real a(5,4)
 j=100
 forall( x=1:5,j=1:4)
  a(x,j)=j
 end forall
 if (any((/a/)/=(/((n,k=1,5),n=1,4)/)))print *,'fail'
 if (x/=-1)print *,'fail'
 if (j/=100)print *,'fail'
end
subroutine ss2
 type element
  real element_wt
  character(4),pointer::name
 end type element
 type(element) c(200),d(200)
 real w(1000)
 character(4),target::name(1000)
 do i=1,1000
  write(name(i),'(i4.4)')i
  w(i)=i/1000.
 end do
 do i=1,200
   nullify(c(i)%name)
   nullify(d(i)%name)
 end do
 n=400
 forall(i=1:200,w(i+n-1) > .5)
   c(i)%element_wt = w(i+n-1)
   c(i)%name       =>name(i+n-1)
 end forall
 do i=1,200;if(w(i+n-1) > .5)then;else ;cycle ;endif
   d(i)%element_wt = w(i+n-1)
   d(i)%name       =>name(i+n-1)
 end do
 do i=1,200
   if (associated(c(i)%name).neqv. associated(d(i)%name))print *,'fail'
   if (.not.associated(c(i)%name))cycle
   if(c(i)%element_wt/=d(i)%element_wt)print *,'fail'
   if(c(i)%name      /=d(i)%name      )print *,'fail'
 end do
end
subroutine ss1
 real::a(10,10),b(10,10)=1.0
 real::aa(10,10),bb(10,10)=1.0
 b(5,5)=0; a(5,5)=0
 forall(i=1:10,j=1:10,b(i,j)/=0.0)
   a(i,j)=real(i+j-2)
   b(i,j)=a(i,j)+b(i,j)*real(i*j)
 end forall
 bb(5,5)=0; aa(5,5)=0
 do i=1,10; do j=1,10;if (bb(i,j)==0.0)cycle
   aa(i,j)=real(i+j-2)
   bb(i,j)=aa(i,j)+bb(i,j)*real(i*j)
 end do;end do
 if (any(a/=aa))print *,'fail'
 if (any(b/=bb))print *,'fail'
end
