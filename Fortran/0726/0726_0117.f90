 call s1
 print *,'pass'
 end
 subroutine s1
  integer::index(10)/2,4,6,8,10,9,7,5,3,1/
  real ::a(10),b(10)=(/(m,m=11,20)/)
  real ::aa(10),bb(10)=(/(m,m=11,20)/)
  forall(i=1:10)
    a(index(i))=b(i)
  end forall
  if (any(a/=(/20,11,19,12,18,13,17,14,16,15/)))write(6,*) "NG"
  do i=1,10
    aa(index(i))=bb(i)
  end do
  if (any(aa/=(/20,11,19,12,18,13,17,14,16,15/)))write(6,*) "NG"
      end
