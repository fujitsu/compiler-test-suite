 call s1
 print *,'pass'
 end
 subroutine s1
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
   type (x)::y
   integer,target::j1,j2(2)
   type (xx),target::jxx
   type (xxxx),target::jxxx(3,3)
   y=x(-1,xx(-1,xxx(-1,j1,-1,j2,jxxx,-1,-1),-1),jxx,-1)
   call ss(y)
   contains
    subroutine ss(z)
    type(x),intent(out)::z
    if (z%iii2%ii2%i1/=1)write(6,*) "NG"
    if (associated(z%iii2%ii2%i2))write(6,*) "NG"
    if (z%iii2%ii2%i3/=3)write(6,*) "NG"
    if (associated(z%iii2%ii2%i4))write(6,*) "NG"
    if (associated(z%iii2%ii2%i5))write(6,*) "NG"
    if (any(z%iii2%ii2%i6/=(/4,5/)))write(6,*) "NG"
    if (    z%iii2%ii2%i7/=6)write(6,*) "NG"
    end subroutine 
 end
