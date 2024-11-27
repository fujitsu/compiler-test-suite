 call s1
 print *,'pass'
 end
 subroutine s1
 logical,parameter::t=.true.,f=.false.
 integer,dimension(3,3)::a=reshape((/(i,i=1,9)/),(/3,3/))
 logical,dimension(2,2)::mask=reshape((/t,f,f,t/),(/2,2/))
 integer,dimension(2,2)::dm=reshape((/1,0,0,1/),(/2,2/))
 integer,dimension(2,2)::pm=reshape((/0,1,1,0/),(/2,2/))
 integer,dimension(2,2)::x1,x2,x3,x4
 k1=1;k2=2;k3=3
 forall(kk=k3:k2+1)
 forall(kkk=k3:k2+1)
 where (mask)
  x1=&
   f1(a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm, &
      a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm, &
      a(1:3:2,1:3:2)/dm , &
      a(3,3)/dm, &
      a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm)/dm
 x2=&
   f1(a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm, &
      a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm, &
      a(1:3:2,1:3:2)/dm , &
      a(3,3)/dm, &
      a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm)/dm+ & 
   f1(a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm, &
      a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm, &
      a(1:3:2,1:3:2)/dm , &
      a(3,3)/dm, &
      a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm+a(1:3:2,1:3:2)/dm)/dm
 x3=&
   f1(a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm , &
      a(3,3)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm)/dm
 x4=&
   f1(a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm , &
      a(3,3)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm)/dm+ & 
   f1(a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm , &
      a(3,3)/dm, &
      a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm+a(k1:k3:k2,k1:k3:k2)/dm)/dm
 else where (.not.mask)
  x1=&
   f1(a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm, &
      a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm, &
      a(1:3:2,1:3:2)/pm , &
      a(3,3)/pm, &
      a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm)/pm
 x2=&
   f1(a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm, &
      a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm, &
      a(1:3:2,1:3:2)/pm , &
      a(3,3)/pm, &
      a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm)/pm+ & 
   f1(a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm, &
      a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm, &
      a(1:3:2,1:3:2)/pm , &
      a(3,3)/pm, &
      a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm+a(1:3:2,1:3:2)/pm)/pm
 x3=&
   f1(a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm , &
      a(3,3)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm)/pm
 x4=&
   f1(a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm , &
      a(3,3)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm)/pm+ & 
   f1(a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm , &
      a(3,3)/pm, &
      a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm+a(k1:k3:k2,k1:k3:k2)/pm)/pm
  end where
 end forall
 end forall
 call su1(x1)
 call su2(x2)
 call su1(x3)
 call su2(x4)
 call sx(a(1:3:2,1:3:2),mask,pm,dm)
 contains
  elemental  function f1(i1,i2,i3,i4,i5)
   intent(in)::i1,i2,i3,i4,i5
   integer::f1
   f1=i1+i2+i3+i4+i5
  end function
  subroutine sx(a,mask,p,d)
    integer,dimension(:,:)::a,p,d
    logical,dimension(:,:)::mask
forall (kk=k1:k3-2)
where(mask)
x2=       &
   f1(a(::1,::1)/d+a(::1,::1)/d, &
      a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d, &
      a(::1,::1)/d , &
      a(2,2)/d, &
      a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d)/d 
x1=&
   f1(a(::1,::1)/d+a(::1,::1)/d, &
      a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d, &
      a(::1,::1)/d , &
      a(2,2)/d, &
      a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d)/d+ & 
   f1(a(::1,::1)/d+a(::1,::1)/d, &
      a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d, &
      a(::1,::1)/d , &
      a(2,2)/d, &
      a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d+a(::1,::1)/d)/d 
elsewhere(mask)
x2=0
x1=0
elsewhere(.not.mask)
x2=       &
   f1(a(::1,::1)/p+a(::1,::1)/p, &
      a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p, &
      a(::1,::1)/p , &
      a(2,2)/p, &
      a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p)/p 
x1=&
   f1(a(::1,::1)/p+a(::1,::1)/p, &
      a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p, &
      a(::1,::1)/p , &
      a(2,2)/p, &
      a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p)/p+ & 
   f1(a(::1,::1)/p+a(::1,::1)/p, &
      a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p, &
      a(::1,::1)/p , &
      a(2,2)/p, &
      a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p+a(::1,::1)/p)/p 
else where
x1=-1
x2=-2
end where
end forall 
call su1(x2)
call su2(x1)
  end subroutine 
 subroutine su1(b)
  integer,dimension(:,:)::b
  if (any(shape(b)/=(/2,2/)))write(6,*) "NG"
  if (b(1,1)/=a(1,1)*2+a(1,1)*3+a(1,1)+a(3,3)+a(1,1)*4)write(6,*) "NG"
  if (b(2,1)/=a(3,1)*2+a(3,1)*3+a(3,1)+a(3,3)+a(3,1)*4)write(6,*) "NG"
  if (b(1,2)/=a(1,3)*2+a(1,3)*3+a(1,3)+a(3,3)+a(1,3)*4)write(6,*) "NG"
  if (b(2,2)/=a(3,3)*2+a(3,3)*3+a(3,3)+a(3,3)+a(3,3)*4)write(6,*) "NG"
 end subroutine
 subroutine su2(b)
  integer,dimension(:,:)::b
  if (any(shape(b)/=(/2,2/)))write(6,*) "NG"
  if (b(1,1)/2/=a(1,1)*2+a(1,1)*3+a(1,1)+a(3,3)+a(1,1)*4)write(6,*) "NG"
  if (b(2,1)/2/=a(3,1)*2+a(3,1)*3+a(3,1)+a(3,3)+a(3,1)*4)write(6,*) "NG"
  if (b(1,2)/2/=a(1,3)*2+a(1,3)*3+a(1,3)+a(3,3)+a(1,3)*4)write(6,*) "NG"
  if (b(2,2)/2/=a(3,3)*2+a(3,3)*3+a(3,3)+a(3,3)+a(3,3)*4)write(6,*) "NG"
 end subroutine
end
