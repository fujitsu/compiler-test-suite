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
 subroutine sub(i2,i1)
 use m1
 character(i1),dimension(:,:),pointer:: z1,z3*5
 character(i1),dimension(2,1):: v1,v3*5
 character(i1),dimension(i2,1):: w1,w3*5
 j5=5
 allocate(z1(2,1))
 allocate(z3(2,1))
v1=reshape((/'1','2'/),(/2,1/)); w1=v1;z1=v1
 w3(:,1)=   (plus3(w1(:,1)));write(1,*)w3
 v3(:,1)=   (plus3(v1(:,1)));write(1,*)v3
 z3(:,1)=   (plus3(z1(:,1)));write(1,*)z3
 end
character*50 r
call sub(2,1)
rewind 1
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
read(1,'(a)') r;if (r/=' 1    2')print *,'error-1'
 print *,'pass'
end