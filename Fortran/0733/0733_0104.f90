 module m1
 character,parameter,dimension(1,1,1)::m='a'
  contains
   elemental function aster(a1)
   character*2 aster
   character*(*),intent(in)::a1
       aster=a1//a1
   end function
   elemental function plus(a1)
   character*3 plus
   character*(*),intent(in)::a1
   plus=a1//'b'
   end function
 end
 use m1
 integer,allocatable::v3(:)
 character,dimension(:,:,:),pointer:: zz2*3
 allocate(zz2(1,1,1));zz2='aab'
 allocate(v3(4))
v3=(/4,3,2,1/)
 if (any(zz2(:,:,:)(1:1)/=           m  ))write(6,*) "NG"
v3=(/4,3,2,1/)
 if (any(zz2(:,:,:)(1:2)/=     aster(m) ))write(6,*) "NG"
v3=(/4,3,2,1/)
 if (any(zz2/=     aster(m)//'b' ))write(6,*) "NG"
v3=(/4,3,2,1/)
 if (any(zz2/=plus(aster(m))))write(6,*) "NG"
print *,'pass'
 end
