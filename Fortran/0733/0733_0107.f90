 module m1
 integer,parameter,dimension(1,2,1)::m=reshape((/100,200/),(/1,2,1/))
  contains
   elemental function aster(a1)
   integer aster
   integer,intent(in)::a1
       aster=a1+a1
   end function
   elemental function plus(a1)
   integer plus
   integer,intent(in)::a1
   plus=a1+a1
   end function
 end
 use m1
 integer,allocatable::v3(:)
 integer,dimension(:,:,:),pointer:: zz2
 allocate(zz2(1,2,1));zz2(1,1,1)=100*4;zz2(1,2,1)=200*4
 allocate(v3(4))
v3=(/4,3,2,1/)
 if (any(zz2(:,:,:)/4/=           m  ))write(6,*) "NG"
v3=(/4,3,2,1/)
 if (any(zz2(:,:,:)/2/=     aster(m) ))write(6,*) "NG"
v3=(/4,3,2,1/)
 if (any(zz2/=     aster(m)*2 ))write(6,*) "NG"
v3=(/4,3,2,1/)
 if (any(zz2/=plus(aster(m))))write(6,*) "NG"
print *,'pass'
 end
