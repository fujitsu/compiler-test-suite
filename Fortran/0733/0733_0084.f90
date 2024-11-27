 module m1
 integer,parameter::p=iachar('a')
 integer::j=1
  contains
   elemental function plus3(a1)
   character*(1) plus3
   character*(*),intent(in)::a1
   plus3=a1
   end function
 end
 subroutine sub
 use m1
 character,dimension(:,:),allocatable:: r1
 character,dimension(:,:),allocatable:: r3
 allocate(r1(1,1),r3(1,1))
r1(1,1)='1'
 r3     =   plus3(r1);write(1,*)r3
 end
character*50 r
call sub
rewind 1
read(1,'(a)') r;if (r/=' 1')print *,'error-1'
 print *,'pass'
end
