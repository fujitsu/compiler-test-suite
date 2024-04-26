 module m1
   type x
      integer ,allocatable::x1(:)
      integer ,allocatable::x2(:)
      integer ,allocatable::x3(:)
      integer ,allocatable::x4(:)
      integer ,allocatable::x5(:)
      integer ,allocatable::x6(:)
      integer ,allocatable::x7(:)
      integer ,allocatable::x8(:)
      integer ,allocatable::x9(:)
   end type x
 contains
   subroutine s1(a)
     type(x),intent(out):: a(:)
   end subroutine s1
 end module m1
subroutine s
 use m1
 type(x):: a(3)
 call s1(a)
end
!$omp parallel
 call s
!$omp end parallel
 print *,'pass'
 end 
