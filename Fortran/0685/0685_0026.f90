     module mod
       type str1
         integer,dimension(10)::a
       end type
       type str2
         integer,dimension(10)::b
       end type
       type str3
         integer,dimension(10)::z
       end type
       type str4
        sequence
         integer,dimension(10)::x
       end type
     end module

     call sub()
     print *,'pass'
     end

      subroutine sub()
      use mod
      common /com/ s4 , i
      type(str1) s1
      type(str2) s2
      type(str3) s3
      type(str4) s4
      i=100
      s1%a=(/0,0,0,0,0,0,0,0,0,0/)
      s2%b=(/0,0,0,0,0,0,0,0,0,0/)
      s3%z=(/1,2,3,4,5,6,7,8,9,0/)
      s4%x=(/1,2,3,4,5,6,7,8,9,10/)
   !$ call OMP_SET_NUM_THREADS(1)
!$omp parallel shared(s3,s1)
!$omp do firstprivate(/com/)
      do i=1,10
        s1%a(s4%x(i)) = s1%a(s4%x(i)) + s3%z(s4%x(i)) + i
      enddo
!$omp enddo
!$omp endparallel
!$    if (i/=100) print *,"fail"

      do i=1,10
        s2%b(i) = s2%b(i) + s3%z(i) + i
      enddo
      if (any(s1%a/=s2%b)) print *,"fail"
      end subroutine
