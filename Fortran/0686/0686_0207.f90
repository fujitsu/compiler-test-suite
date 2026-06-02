    module mod
      logical(1),dimension(3,2,1),target::l11=.true.,l12=.false.,l13=.true.
      logical(2),dimension(3,1,1),target::l21=.true.,l22=.false.,l23=.true.
      logical(4),dimension(3,1,1),target::l41=.true.,l42=.false.,l43=.true.
      logical(8),dimension(3,1,1),target::l81=.true.,l82=.false.,l83=.true.
    end module mod

    program abc
     use mod
     interface
       subroutine sub1(p_l1,p_l2,p_l4,p_l8)
         logical(1),pointer,dimension(:,:,:)::p_l1
         logical(2),pointer,dimension(:,:,:)::p_l2
         logical(4),pointer,dimension(:,:,:)::p_l4
         logical(8),pointer,dimension(:,:,:)::p_l8
       end subroutine sub1
       subroutine sub2(p_l1,p_l2,p_l4,p_l8)
         logical(1),pointer,dimension(:,:,:)::p_l1
         logical(2),pointer,dimension(:,:,:)::p_l2
         logical(4),pointer,dimension(:,:,:)::p_l4
         logical(8),pointer,dimension(:,:,:)::p_l8
       end subroutine sub2
     end interface
     logical(1),dimension(:,:,:),pointer::p_l1
     logical(2),dimension(:,:,:),pointer::p_l2
     logical(4),pointer,dimension(:,:,:)::p_l4
     logical(8),pointer,dimension(:,:,:)::p_l8
      p_l1=>l11
      p_l2=>l21
      p_l4=>l41
      p_l8=>l81
      call sub1(p_l1,p_l2,p_l4,p_l8)
!$omp parallel private(p_l1,p_l2,p_l4,p_l8)
      call sub2(p_l1,p_l2,p_l4,p_l8)
!$omp end parallel
      if (.not.all(p_l1)) print *,"fail"
      if (.not.all(p_l2)) print *,"fail"
      if (.not.all(p_l4)) print *,"fail"
      if (.not.all(p_l8)) print *,"fail"
      print *,'pass'
    end program

    subroutine sub1(p_l1,p_l2,p_l4,p_l8)
     use mod
     logical(1),pointer,dimension(:,:,:)::p_l1
     logical(2),pointer,dimension(:,:,:)::p_l2
     logical(4),pointer,dimension(:,:,:)::p_l4
     logical(8),pointer,dimension(:,:,:)::p_l8
!$omp parallel private(p_l1,p_l2,p_l4,p_l8)
      p_l1=>l12
      p_l2=>l22
      p_l4=>l42
      p_l8=>l82
!$omp single
      p_l1=>l13
      p_l2=>l23
      p_l4=>l43
      p_l8=>l83
!$omp end single copyprivate(p_l1,p_l2,p_l4,p_l8)
      if (.not.all(p_l1)) print *,"fail"
      if (.not.all(p_l2)) print *,"fail"
      if (.not.all(p_l4)) print *,"fail"
      if (.not.all(p_l8)) print *,"fail"
      p_l1=>null()
      p_l2=>null()
      p_l4=>null()
      p_l8=>null()
!$omp end parallel
    end subroutine sub1

    subroutine sub2(p_l1,p_l2,p_l4,p_l8)
     use mod
     logical(1),pointer,dimension(:,:,:)::p_l1
     logical(2),pointer,dimension(:,:,:)::p_l2
     logical(4),pointer,dimension(:,:,:)::p_l4
     logical(8),pointer,dimension(:,:,:)::p_l8
      p_l1=>l12
      p_l2=>l22
      p_l4=>l42
      p_l8=>l82
!$omp single
      p_l1=>l13
      p_l2=>l23
      p_l4=>l43
      p_l8=>l83
!$omp end single copyprivate(p_l1,p_l2,p_l4,p_l8)
      if (.not.all(p_l1)) print *,"fail"
      if (.not.all(p_l2)) print *,"fail"
      if (.not.all(p_l4)) print *,"fail"
      if (.not.all(p_l8)) print *,"fail"
      p_l1=>null()
      p_l2=>null()
      p_l4=>null()
      p_l8=>null()
    end subroutine sub2
