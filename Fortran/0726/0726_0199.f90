 call s1
 print *,'pass'
 end
 subroutine s1
 integer,dimension(3,3)::a=reshape((/(i,i=1,9)/),(/3,3/))
 k1=1;k2=2;k3=3
 call su1(&
   f1(a(1:3:2,1:3:2)+a(1:3:2,1:3:2), &
      a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2), &
      a(1:3:2,1:3:2) , &
      a(3,3), &
      a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2))) 
 call su2(&
   f1(a(1:3:2,1:3:2)+a(1:3:2,1:3:2), &
      a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2), &
      a(1:3:2,1:3:2) , &
      a(3,3), &
      a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2))+ & 
   f1(a(1:3:2,1:3:2)+a(1:3:2,1:3:2), &
      a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2), &
      a(1:3:2,1:3:2) , &
      a(3,3), &
      a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2)+a(1:3:2,1:3:2))) 
 call su1(&
   f1(a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2), &
      a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2), &
      a(k1:k3:k2,k1:k3:k2) , &
      a(3,3), &
      a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2))) 
 call su2(&
   f1(a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2), &
      a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2), &
      a(k1:k3:k2,k1:k3:k2) , &
      a(3,3), &
      a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2))+ & 
   f1(a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2), &
      a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2), &
      a(k1:k3:k2,k1:k3:k2) , &
      a(3,3), &
      a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2)+a(k1:k3:k2,k1:k3:k2))) 
 call sx(a(1:3:2,1:3:2))
 contains
  elemental  function f1(i1,i2,i3,i4,i5)
   intent(in)::i1,i2,i3,i4,i5
   integer::f1
   f1=i1+i2+i3+i4+i5
  end function
  subroutine sx(a)
    integer,dimension(:,:)::a
 call su1(&
   f1(a(::1,::1)+a(::1,::1), &
      a(::1,::1)+a(::1,::1)+a(::1,::1), &
      a(::1,::1) , &
      a(2,2), &
      a(::1,::1)+a(::1,::1)+a(::1,::1)+a(::1,::1))) 
 call su2(&
   f1(a(::1,::1)+a(::1,::1), &
      a(::1,::1)+a(::1,::1)+a(::1,::1), &
      a(::1,::1) , &
      a(2,2), &
      a(::1,::1)+a(::1,::1)+a(::1,::1)+a(::1,::1))+ & 
   f1(a(::1,::1)+a(::1,::1), &
      a(::1,::1)+a(::1,::1)+a(::1,::1), &
      a(::1,::1) , &
      a(2,2), &
      a(::1,::1)+a(::1,::1)+a(::1,::1)+a(::1,::1))) 
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
