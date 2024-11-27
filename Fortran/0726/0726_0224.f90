 call s1
 print *,'pass'
 end
 module m1
   type xxxx
      integer z
   end type
   type xxx
     integer ::i1=1
     integer,pointer ::i2=>null()
     integer ::i3=3
     integer,pointer,dimension(:) ::i4=>null()
     type(xxxx),pointer,dimension(:,:) ::i5=>null()
     integer,dimension(2) ::i6=(/4,5/)
     integer              ::i7=6
   end type
   type xx
      integer :: ii1
      type (xxx)::ii2
      integer :: ii3
   end type
   type x
      integer :: iii1
      type (xx)::iii2
      type (xx),pointer::iii3
      integer :: iii4
   end type
   type (x),save::y,yy,yyy,yyyy
   integer,target,save::j1,j2(2)
   type (xx),target,save::jxx
   type (xxxx),target,save::jxxx(3,3)
  contains
    subroutine ss1(z1,z2,z3,z4)
    type(x),intent(out)::z1,z2,z4
    entry      ss2(z1,z2,z3,z4)
    type(x)::z3
    entry      ss3(z1,z2,z3,z4)
    entry      ss4(z1,z2,z3,z4)
    if (z1%iii2%ii2%i1/=1)write(6,*) "NG"
    if (associated(z1%iii2%ii2%i2))write(6,*) "NG"
    if (z1%iii2%ii2%i3/=3)write(6,*) "NG"
    if (associated(z1%iii2%ii2%i4))write(6,*) "NG"
    if (associated(z1%iii2%ii2%i5))write(6,*) "NG"
    if (any(z1%iii2%ii2%i6/=(/4,5/)))write(6,*) "NG"
    if (    z1%iii2%ii2%i7/=6)write(6,*) "NG"
    if (z2%iii2%ii2%i1/=1)write(6,*) "NG"
    if (associated(z2%iii2%ii2%i2))write(6,*) "NG"
    if (z2%iii2%ii2%i3/=3)write(6,*) "NG"
    if (associated(z2%iii2%ii2%i4))write(6,*) "NG"
    if (associated(z2%iii2%ii2%i5))write(6,*) "NG"
    if (any(z2%iii2%ii2%i6/=(/4,5/)))write(6,*) "NG"
    if (    z2%iii2%ii2%i7/=6)write(6,*) "NG"
    if (z3%iii2%ii2%i1/=-1)write(6,*) "NG"
    if (.not.associated(z3%iii2%ii2%i2,j1))write(6,*) "NG"
    if (z3%iii2%ii2%i3/=-1)write(6,*) "NG"
    if (.not.associated(z3%iii2%ii2%i4,j2))write(6,*) "NG"
    if (.not.associated(z3%iii2%ii2%i5,jxxx))write(6,*) "NG"
    if (any(z3%iii2%ii2%i6/=-1))write(6,*) "NG"
    if (    z3%iii2%ii2%i7/=-1)write(6,*) "NG"
    if (z4%iii2%ii2%i1/=1)write(6,*) "NG"
    if (associated(z4%iii2%ii2%i2))write(6,*) "NG"
    if (z4%iii2%ii2%i3/=3)write(6,*) "NG"
    if (associated(z4%iii2%ii2%i4))write(6,*) "NG"
    if (associated(z4%iii2%ii2%i5))write(6,*) "NG"
    if (any(z4%iii2%ii2%i6/=(/4,5/)))write(6,*) "NG"
    if (    z4%iii2%ii2%i7/=6)write(6,*) "NG"
    end subroutine 
end
 subroutine s1
   use m1
   y=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yyy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yyyy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   call ss1(y,yy,yyy,yyyy)
   y=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yyyy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   call ss2(y,yy,yyy,yyyy)
   y=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yyyy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   call ss3(y,yy,yyy,yyyy)
   y=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   yyyy=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   call ss4(y,yy,yyy,yyyy)
 end
