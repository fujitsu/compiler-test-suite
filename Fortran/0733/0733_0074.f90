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
 subroutine sub(i2)
 use m1
 character,dimension(:,:),allocatable:: r1,r3*5
 character,dimension(:,:),pointer:: z1,z3*5
 character,dimension(2,3):: v1,v3*5
 character,dimension(i2,3):: w1,w3*5
 character,dimension(2,3):: t3*5
 j5=5
 allocate(z1(2,3))
 allocate(z3(2,3))
 allocate(r1(2,3))
 allocate(r3(2,3))
v1=reshape((/'1','2','3','4','5','6'/),(/2,3/)); w1=v1;z1=v1;r1=v1
 write(1,*)   (plus3(w1(:,:)))
 write(1,*)   (plus3(v1(:,:)))
 write(1,*)   (plus3(r1(:,1)))
 write(1,*)   (plus3(r1(:,:)))
 write(1,*)   (plus3(z1(:,1)))
 write(1,*)   (plus3(z1(:,:)))
 t3(:,:)=   (plus3(r1(:,:)));write(1,*)t3
 w3(:,:)=   (plus3(w1(:,:)));write(1,*)w3
 v3(:,:)=   (plus3(v1(:,:)));write(1,*)v3
 r3(:,1)=   (plus3(r1(:,1)));write(1,*)r3(:,1)
 r3(:,:)=   (plus3(r1(:,:)));write(1,*)r3
 z3(:,1)=   (plus3(z1(:,1)));write(1,*)z3(:,1)
 z3(:,:)=   (plus3(z1(:,:)));write(1,*)z3
 end
character*50 r
call sub(2)
rewind 1
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2    3    4    5    6')print *,'error-1'
 print *,'pass'
end
