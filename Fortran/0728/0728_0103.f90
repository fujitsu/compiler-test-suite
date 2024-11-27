 call s1
 print *,'pass'
 end
 module m1
  real(8),pointer,dimension(:)::a
 end
 subroutine s1
 use m1
  real(8),pointer,dimension(:)::aa
  allocate(aa(10))
  aa=(/(i,i=1,10)/)
  a=>aa(1:10:2)
  call ss1
if (any(aa/=(/-1,2,-1,4,-1,6,-1,8,-1,10/)))write(6,*) "NG"
end
 subroutine ss1
 use m1
 call sss1(a)
 end
subroutine sss1(a)
real(8)::a(5)
if (any(a/=(/1,3,5,7,9/)))write(6,*) "NG"
a=-1
end
