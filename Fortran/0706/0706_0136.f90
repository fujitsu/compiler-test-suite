c
c
      call s1
      print *,'pass'
      end
      module  mm
       interface x
         module procedure xa,xs
       end interface
       interface y
         module procedure ya,ys
       end interface
       type st
         character(len=4),pointer::a1
         character(len=4),pointer,dimension(:,:)::a2
         character(len=4)        ::a3
         character(len=4),        dimension(2,2)::a4
       end type
       character(len=4),pointer::b1
       character(len=4),pointer,dimension(:,:)::b2
       character(len=4),pointer ::scaler_target
       character(len=4),pointer,dimension(:,:)::array_target
       character(len=5),target  ::master_scaler_target
       character(len=5),target ,dimension(2,2,2)::master_array_target
       character(len=4),parameter,dimension(2,2)::r_value
     1      =reshape((/'abcd','efgh','ijkl','mnop'/),(/2,2/))
       type(st),pointer::c1,c2(:,:)
       type(st),target ::c3,c4(2,2)
       logical,parameter::t=.true.,f=.false.
       logical d2_omit_flag
       logical d1_alloc_flag
       logical d1_d2_assoc_flag
       contains
       function master_scaler_set(i) result(r)
       character(len=len(scaler_target)),pointer::r
       r=>master_scaler_target(i:)
       r='1234'
       end function
       subroutine allocate_target
       scaler_target=>master_scaler_set(2)
       array_target =>master_array_target(:,2,:)(2:)
       array_target =  r_value
       end subroutine
       subroutine xs(d1,d2)
       character(len=*),pointer::d1,d2
       optional d2
       if (present(d2).and.d2_omit_flag)print *,'fail'
       if (.not.present(d2).and.(.not.d2_omit_flag))print *,'fail'
       if (associated(d1).and..not.d1_alloc_flag)print *,'fail'
       if (.not.associated(d1).and..not.(.not.d1_alloc_flag))
     1  print *,'fail'
       if (associated(d1,d2).and..not.d1_d2_assoc_flag)print *,'fail'
       if (.not.associated(d1,d2).and.d1_d2_assoc_flag)print *,'fail'
       if (associated(d1,d2))then
         if (.not.associated(d1,scaler_target))print *,'fail'
         if (.not.associated(d1,master_scaler_target(2:)))print *,'fail'
         if (.not.associated(
     1            scaler_target,master_scaler_target(2:)))print *,'fail'
         if (scaler_target/=master_scaler_target(2:))print *,'fail'
       endif
       end subroutine
       subroutine xa(d1,d2)
       character(len=*),dimension(:,:),pointer::d1,d2
       optional d2
       if (present(d2).and.d2_omit_flag)print *,'fail'
       if (.not.present(d2).and..not.d2_omit_flag)print *,'fail'
       if (associated(d1).and..not.d1_alloc_flag)print *,'fail'
       if (.not.associated(d1).and.d1_alloc_flag)print *,'fail'
       if (associated(d1,d2).and..not.d1_d2_assoc_flag)print *,'fail'
       if (.not.associated(d1,d2).and.d1_d2_assoc_flag)print *,'fail'
       if (associated(d1,d2))then
         if (.not.associated(d1,array_target))print *,'fail'
         if (.not.associated(
     1        d1,master_array_target(:,2,:)(2:)))print *,'fail'
         if (.not.associated(array_target,
     1           master_array_target(:,2,:)(2:)))print *,'fail'
         if (any(array_target/=
     1           master_array_target(:,2,:)(2:)))print *,'fail'
       endif
       end subroutine
       subroutine ys(d1)
       character(len=*),pointer::d1
       if (associated(d1).and..not.d1_alloc_flag)print *,'fail'
       if (.not.associated(d1).and..not.(.not.d1_alloc_flag))
     1  print *,'fail'
       end subroutine
       subroutine ya(d1)
       character(len=*),dimension(:,:),pointer::d1
       if (associated(d1).and..not.d1_alloc_flag)print *,'fail'
       if (.not.associated(d1).and.d1_alloc_flag)print *,'fail'
       end subroutine
       function nsf(i) result(r)
       character*(i),pointer::r
       nullify(r)
       end function
       function naf(i) result(r)
       character*(i),pointer::r(:,:)
       nullify(r)
       end function
       subroutine nullify()
       allocate(c1,c2(2,2))
       nullify(b1,b2,c3%a1,c3%a2,c4(1,1)%a1,c4(1,1)%a2)
       nullify(      c1%a1,c1%a2,c2(1,1)%a1,c2(1,1)%a2)
       do k=1,2;do m=1,2
        if (k==1.and.m==1)cycle
        if (k==1.and.m==1)print *,'fail'
        nullify(c4(m,k)%a1,c4(m,k)%a2)
        nullify(c2(m,k)%a1,c2(m,k)%a2)
       end do;end do
       end subroutine
       subroutine associated_target()
       b1=>scaler_target;b2=>array_target;
       c3%a1=>scaler_target;c3%a2=>array_target
       c1%a1=>scaler_target;c1%a2=>array_target
       do k=1,2;do m=1,2
        c2(m,k)%a1=>scaler_target; c2(m,k)%a2=>array_target
        c4(m,k)%a1=>scaler_target; c4(m,k)%a2=>array_target
       end do;end do
       end subroutine
       function assoc_sf(i) result(r)
       character*(i),pointer::r
       r=>scaler_target
       end function
       function assoc_af(i) result(r)
       character*(i),pointer::r(:,:)
       r=>array_target
       end function
      end module
      subroutine s1
      use mm
      d2_omit_flag=t
      d1_alloc_flag=f
      d1_d2_assoc_flag = f
      call allocate_target
      call nullify
      call x(d1=b1)
      call x(d1=b2)
      call x(d1=c1%a1)
      call x(d1=c1%a2)
      call x(d1=c3%a1)
      call x(d1=c3%a2)
      call x(d1=nsf(4))
      call x(d1=naf(4))
      do k=1,2;do m=1,2
        call x(d1=c2(m,k)%a1)
        call x(d1=c2(m,k)%a2)
        call x(d1=c4(m,k)%a1)
        call x(d1=c4(m,k)%a2)
      end do;end do
      call y(d1=b1)
      call y(d1=b2)
      call y(d1=c1%a1)
      call y(d1=c1%a2)
      call y(d1=c3%a1)
      call y(d1=c3%a2)
      call y(d1=nsf(4))
      call y(d1=naf(4))
      do k=1,2;do m=1,2
        call y(d1=c2(m,k)%a1)
        call y(d1=c2(m,k)%a2)
        call y(d1=c4(m,k)%a1)
        call y(d1=c4(m,k)%a2)
      end do;end do
      d1_alloc_flag=t
      call associated_target
      call y(d1=b1)
      call y(d1=b2)
      call y(d1=c1%a1)
      call y(d1=c1%a2)
      call y(d1=c3%a1)
      call y(d1=c3%a2)
      call y(d1=assoc_sf(4))
      call y(d1=assoc_af(4))
      do k=1,2;do m=1,2
        call y(d1=c2(m,k)%a1)
        call y(d1=c2(m,k)%a2)
        call y(d1=c4(m,k)%a1)
        call y(d1=c4(m,k)%a2)
      end do;end do
      d2_omit_flag=f
      d1_d2_assoc_flag = t
      call x(d2=scaler_target,d1=b1)
      call x(d2=array_target,d1=b2)
      call x(d2=scaler_target,d1=c1%a1)
      call x(d2=array_target,d1=c1%a2)
      call x(d2=scaler_target,d1=c3%a1)
      call x(d2=array_target,d1=c3%a2)
      d1_d2_assoc_flag = f
      d1_alloc_flag=f
      call x(d2=scaler_target,d1=nsf(4))
      call x(d2=array_target,d1=naf(4))
      d1_d2_assoc_flag = t
      d1_alloc_flag=t
      do k=1,2;do m=1,2
        call x(d2=scaler_target,d1=c2(m,k)%a1)
        call x(d2=array_target,d1=c2(m,k)%a2)
        call x(d2=scaler_target,d1=c4(m,k)%a1)
        call x(d2=array_target,d1=c4(m,k)%a2)
      end do;end do
      end
