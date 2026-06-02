      call s1
      print *,'pass'
      end
module m1
 character a11(16)
 character a21(4,4)
 character a31(2,2,4)
 character a41(2,2,2,2)
  interface operator(//)
     module procedure c12,c13,c14
     module procedure c21,c23,c24
     module procedure c31,c32,c34
     module procedure c41,c42,c43
  end interface
  interface chk
     module procedure chk1,chk2,chk3,chk4
  end interface
  interface operator(.x.)
     module procedure x1,x2,x3,x4
  end interface
  integer ::n
 contains
  subroutine set
   a11=reshape((/(achar(i),i=iachar('a'),iachar('a')+size(a41)-1)/),shape(a11))
   a21=reshape((/(achar(i),i=iachar('a'),iachar('a')+size(a41)-1)/),shape(a21))
   a31=reshape((/(achar(i),i=iachar('a'),iachar('a')+size(a41)-1)/),shape(a31))
   a41=reshape((/(achar(i),i=iachar('a'),iachar('a')+size(a41)-1)/),shape(a41))
  end subroutine
  function x1(a,b) result(r)
    character(*),dimension(:),intent(in)::a,b
    logical ::r(size(a))
    if (len(b)/=1)print *,'fail'
    do i=1,size(r)
     r(i)=a(i)/=repeat(b(i),len(a))
    end do
  end function
  function x2(a,b) result(r)
    character(*),dimension(:,:),intent(in)::a,b
    logical ::r(size(a,1),size(a,2))
    if (len(b)/=1)print *,'fail'
    do i2=1,size(r,2)
    do i1=1,size(r,1)
     r(i1,i2)=a(i1,i2)/=repeat(b(i1,i2),len(a))
    end do
    end do
  end function
  function x3(a,b) result(r)
    character(*),dimension(:,:,:),intent(in)::a,b
    logical ::r(size(a,1),size(a,2),size(a,3))
    if (len(b)/=1)print *,'fail'
    do i3=1,size(r,3)
    do i2=1,size(r,2)
    do i1=1,size(r,1)
     r(i1,i2,i3)=a(i1,i2,i3)/=repeat(b(i1,i2,i3),len(a))
    end do
    end do
    end do
  end function
  function x4(a,b) result(r)
    character(*),dimension(:,:,:,:),intent(in)::a,b
    logical ::r(size(a,1),size(a,2),size(a,3),size(a,4))
    if (len(b)/=1)print *,'fail'
    do i4=1,size(r,4)
    do i3=1,size(r,3)
    do i2=1,size(r,2)
    do i1=1,size(r,1)
     r(i1,i2,i3,i4)=a(i1,i2,i3,i4)/=repeat(b(i1,i2,i3,i4),len(a))
    end do
    end do
    end do
    end do
  end function
  function c12(a,b) result(r)
   character(*),intent(in):: a(:),b(:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2))
   r=reshape(a,(/size(b,1),size(b,2)/))//b
   n=n*2
  end function
  function c13(a,b) result(r)
   character(*),intent(in):: a(:),b(:,:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2),size(b,3))
   r=reshape(a,(/size(b,1),size(b,2),size(b,3)/))//b
   n=n*2
  end function
  function c14(a,b) result(r)
   character(*),intent(in):: a(:),b(:,:,:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2),size(b,3),size(b,4))
   r=reshape(a,(/size(b,1),size(b,2),size(b,3),size(b,4)/))//b
   n=n*2
  end function
  function c21(a,b) result(r)
   character(*),intent(in):: a(:,:),b(:)
   character(len=len(b)+len(a))::r(size(b))
   r=reshape(a,(/size(b)/))//b
   n=n*2
  end function
  function c23(a,b) result(r)
   character(*),intent(in):: a(:,:),b(:,:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2),size(b,3))
   r=reshape(a,(/size(b,1),size(b,2),size(b,3)/))//b
   n=n*2
  end function
  function c24(a,b) result(r)
   character(*),intent(in):: a(:,:),b(:,:,:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2),size(b,3),size(b,4))
   r=reshape(a,(/size(b,1),size(b,2),size(b,3),size(b,4)/))//b
   n=n*2
  end function
  function c31(a,b) result(r)
   character(*),intent(in):: a(:,:,:),b(:)
   character(len=len(b)+len(a))::r(size(b))
   r=reshape(a,(/size(b)/))//b
   n=n*2
  end function
  function c32(a,b) result(r)
   character(*),intent(in):: a(:,:,:),b(:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2))
   r=reshape(a,(/size(b,1),size(b,2)/))//b
   n=n*2
  end function
  function c34(a,b) result(r)
   character(*),intent(in):: a(:,:,:),b(:,:,:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2),size(b,3),size(b,4))
   r=reshape(a,(/size(b,1),size(b,2),size(b,3),size(b,4)/))//b
   n=n*2
  end function
  function c41(a,b) result(r)
   character(*),intent(in):: a(:,:,:,:),b(:)
   character(len=len(b)+len(a))::r(size(b))
   r=reshape(a,(/size(b)/))//b
   n=n*2
  end function
  function c42(a,b) result(r)
   character(*),intent(in):: a(:,:,:,:),b(:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2))
   r=reshape(a,(/size(b,1),size(b,2)/))//b
   n=n*2
  end function
  function c43(a,b) result(r)
   character(*),intent(in):: a(:,:,:,:),b(:,:,:)
   character(len=len(b)+len(a))::r(size(b,1),size(b,2),size(b,3))
   r=reshape(a,(/size(b,1),size(b,2),size(b,3)/))//b
   n=n*2
  end function
  subroutine chk1(a,i,j)
  character(*),dimension(:)::a
  if (len(a)/=i)print *,'fail'
  if (any(shape(a)/=shape(a11)))print *,'fail'
  if (any(a.x.a11))print *,'fail'
  if (j/=1)print *,'fail'
  end subroutine 
  subroutine chk2(a,i,j)
  character(*),dimension(:,:)::a
  if (len(a)/=i)print *,'fail'
  if (any(shape(a)/=shape(a21)))print *,'fail'
  if (any(a.x.a21))print *,'fail'
  if (j/=2)print *,'fail'
  end subroutine 
  subroutine chk3(a,i,j)
  character(*),dimension(:,:,:)::a
  if (len(a)/=i)print *,'fail'
  if (any(shape(a)/=shape(a31)))print *,'fail'
  if (any(a.x.a31))print *,'fail'
  if (j/=3)print *,'fail'
  end subroutine 
  subroutine chk4(a,i,j)
  character(*),dimension(:,:,:,:)::a
  if (len(a)/=i)print *,'fail'
  if (any(shape(a)/=shape(a41)))print *,'fail'
  if (any(a.x.a41))print *,'fail'
  if (j/=4)print *,'fail'
  end subroutine 
end 
 subroutine s1
use m1
 n=0
 call set
 call chk (a11//a21,2,2)
 call chk (a11//a31,2,3)
 call chk (a11//a41,2,4)
 call chk (a21//a11,2,1)
 call chk (a21//a31,2,3)
 call chk (a21//a41,2,4)
 call chk (a31//a11,2,1)
 call chk (a31//a21,2,2)
 call chk (a31//a41,2,4)
 call chk (a41//a11,2,1)
 call chk (a41//a21,2,2)
 call chk (a41//a31,2,3)
 call chk (a11//a11//(a21//a21),4,2)
 call chk (a11//a11//(a31//a31),4,3)
 call chk (a11//a11//(a41//a41),4,4)
 call chk (a21//a21//(a11//a11),4,1)
 call chk (a21//a21//(a31//a31),4,3)
 call chk (a21//a21//(a41//a41),4,4)
 call chk (a31//a31//(a11//a11),4,1)
 call chk (a31//a31//(a21//a21),4,2)
 call chk (a31//a31//(a41//a41),4,4)
 call chk (a41//a41//(a11//a11),4,1)
 call chk (a41//a41//(a21//a21),4,2)
 call chk (a41//a41//(a31//a31),4,3)
 call chk (a11//a11// a21//a21 ,4,2)
 call chk (a11//a11// a31//a31 ,4,3)
 call chk (a11//a11// a41//a41 ,4,4)
 call chk (a21//a21// a11//a11 ,4,1)
 call chk (a21//a21// a31//a31 ,4,3)
 call chk (a21//a21// a41//a41 ,4,4)
 call chk (a31//a31// a11//a11 ,4,1)
 call chk (a31//a31// a21//a21 ,4,2)
 call chk (a31//a31// a41//a41 ,4,4)
 call chk (a41//a41// a11//a11 ,4,1)
 call chk (a41//a41// a21//a21 ,4,2)
 call chk (a41//a41// a31//a31 ,4,3)
 end
