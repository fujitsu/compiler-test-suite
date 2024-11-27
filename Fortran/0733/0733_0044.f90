 module m1
integer,parameter::p=iachar('a')
  contains
   elemental function plus2(a1,a2)
   character*2 plus2
   character*(*),intent(in)::a1,a2
   plus2=a1//a2
   end function
   elemental function   ss4(a1)
   character(*),intent(in)::a1
   character(3)::ss4
   ss4=a1
   end function
 end
 use m1
 integer,allocatable::v1(:),v2(:),v3(:)
 integer,allocatable::t1(:),t2(:),t3(:)
 character,dimension(:,:,:),pointer:: z1,z3*3,y1
 character,dimension(:,:,:),pointer:: zz1,zz3*3
 allocate(zz1(2*2,3*2,4*2))
 z1=>zz1(::2,::2,::2); z1=char(reshape((/(i,i=p,p-1+24)/),(/2,3,4/)))
 y1=>z1
 allocate(zz3(2*2,3*2,4*2))
 z3=>zz3(::2,::2,::2)
 allocate(v1(2),v2(3),v3(4))
 allocate(t1(2),t2(3),t3(4))
 v1=(/2,1/);v2=(/2,3,1/);v3=(/4,3,2,1/)
 t1=(/2,1/);t2=(/2,3,1/);t3=(/4,3,2,1/)
 z3=ss4(plus2(z1(v1,v2,v3),y1(t1,t2,t3)))
if (any(z3/= &
reshape(&
(/'vv','uu','xx','ww','tt','ss','pp','oo','rr','qq','nn','mm','jj','ii','ll','kk','hh','gg','dd','cc','ff','ee','bb','aa'/),(/2,3,4/))))&
print *,'error1'
 if (any(ss4(plus2(z1(v1,v2,v3),y1(t1,t2,t3)))/=&
reshape(&
(/'vv','uu','xx','ww','tt','ss','pp','oo','rr','qq','nn','mm','jj','ii','ll','kk','hh','gg','dd','cc','ff','ee','bb','aa'/),(/2,3,4/))))&
print *,'error2'
 write(1,*)ss4(plus2(z1(v1,v2,v3),y1(t1,t2,t3)))
rewind 1
read (1,*) z3
if (any(z3/= &
reshape(&
(/'vv','uu','xx','ww','tt','ss','pp','oo','rr','qq','nn','mm','jj','ii','ll','kk','hh','gg','dd','cc','ff','ee','bb','aa'/),(/2,3,4/))))&
print *,'error3'
print *,'pass'
end
