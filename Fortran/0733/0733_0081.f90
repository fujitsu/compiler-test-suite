 module m1
 integer,parameter::p=iachar('a')
 integer::j5=1
  contains
   elemental function plus3(a1)
   character*(j5) plus3
   character*(*),intent(in)::a1
   plus3=a1
   end function
 end
 subroutine sub
 use m1
 character,dimension(1,1):: x1='1'
 character,dimension(:,:),allocatable:: r1
 character,dimension(:,:),allocatable:: r3
 character,dimension(1,1):: x3
 allocate(r1(1,1))
 allocate(r3(1,1))
r1(1,1)='1'
 r3     =   (plus3(x1(:,:)));write(1,*)r3
 x3     =   (plus3(r1(:,:)));write(1,*)x3
 r3     =   (plus3(r1(:,:)));write(1,*)r3
 end
character*50 r
call sub
rewind 1
read(1,'(a)') r;if (r/=' 1')print *,'error-1'
read(1,'(a)') r;if (r/=' 1')print *,'error-1'
read(1,'(a)') r;if (r/=' 1')print *,'error-1'
 print *,'pass'
end
