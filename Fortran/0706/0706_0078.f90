c
c
      call s1
      print *,'pass'
      end
      module flag_m
       logical (kind=4),parameter::t=.true.,f=.false.
      end module flag_m
      module kind_m
       integer(kind=2),parameter::i2_kind=2
      end module 
      module bound_m
      use kind_m
      implicit integer (kind=i2_kind)(u,l)
      data lbound_dim1,ubound_dim1 /-4,-3/
      data lbound_dim2,ubound_dim2 /-2,-1/
      end module bound_m
      module check_value_m
      character (len=*,kind=1),parameter::start_position='a'
      character (len=*,kind=1),parameter::final_position='d'
      integer   (kind=1),parameter::z=len(start_position)
      integer*1,dimension(-2:-1),parameter::len_value=(/100,
     1      len(start_position//final_position) /)
      integer,dimension(2,2),parameter::bound_value=0
      character*2,dimension(2,2),parameter::input_check_value
     1      = reshape( (/ ( repeat(char(i),len_value(-1)),
     1                         i=ichar (start_position(1:z)),
     1                           iachar(final_position(z:1)))  /) , 
     1                 (/ ubound(bound_value) /) )
      end module
      module return_value_m
      character (len=*,kind=1),parameter::start_position='e'
      character (len=*,kind=1),parameter::final_position='h'
      integer   (kind=1),parameter::z=len(start_position)
      integer,dimension(-2:-1),parameter::len_value=(/100,
     1      len(start_position//final_position) /)
      integer,dimension(2,2),parameter::bound_value=0
      character*2,dimension(2,2)::return_value
     1      = reshape( (/ ( repeat(char(i),len_value(-1)),
     1                         i=ichar (start_position(1:z)),
     1                           iachar(final_position(z:1)))  /) , 
     1                 (/ ubound(bound_value) /) )
      end module
      module x2_shape_m
       use kind_m
       integer(kind=i2_kind),parameter,dimension(-4:-4)::x2_shape=(/4/)
      end module
      module vector_subscript_m
       use kind_m
       integer(kind=i2_kind),pointer,dimension(:)::vector_subscript
      end module
      module caller_vector_subscript_m
       use kind_m
       integer(kind=i2_kind),pointer,dimension(:)::v_s
      end module
      module loop_c_m
       use kind_m
       integer(kind=i2_kind)::loop_c
      end module
      module m1
      use bound_m
      use check_value_m
      use return_value_m
      use x2_shape_m
      contains
        subroutine x1(a,vector_subscript_flag)
        implicit none
        logical (kind=1),optional::vector_subscript_flag
        character (len=*,kind=1),optional,
     1       dimension(lbound_dim1:ubound_dim1,
     1                 lbound_dim2:ubound_dim2)::a
        if (kind(lbound_dim1)/=i2_kind)print *,'fail'
        if (kind(ubound_dim2)/=i2_kind)print *,'fail'
        if (2                /=i2_kind)print *,'fail'
        if (.not.present(a))print *,'fail'
        if (len(a)/=2)print *,'fail'
        if (any(a/=input_check_value))print *,'fail'
        if (.not.present(vector_subscript_flag))print *,'fail'
        if (vector_subscript_flag) return
        a=return_value
        end subroutine
        subroutine x2(a,vector_subscript_flag)
        use x2_shape_m
        implicit none
        logical (kind=1),optional::vector_subscript_flag
        character (len=*,kind=1),optional,
     1       dimension(lbound_dim1:
     1                             ubound_dim2)::a
        if (size(a,dim=1)/=4)print *,'fail'
        if (kind(lbound_dim1)/=i2_kind)print *,'fail'
        if (kind(ubound_dim2)/=i2_kind)print *,'fail'
        if (2                /=i2_kind)print *,'fail'
        if (.not.present(a))print *,'fail'
        if (len(a)/=2)print *,'fail'
        if (any(a/=reshape(input_check_value,x2_shape)))print *,'fail'
        if (.not.present(vector_subscript_flag))print *,'fail'
        if (vector_subscript_flag) return
        a=reshape(return_value,x2_shape)
        end subroutine
        subroutine x3(a,vector_subscript_flag)
        implicit none
        logical (kind=1),optional::vector_subscript_flag
        character (len=*,kind=1),optional,
     1       dimension(lbound_dim1:*) ::a
        if (size(a(:ubound_dim2),dim=1)/=4)print *,'fail'
        if (kind(lbound_dim1)/=i2_kind)print *,'fail'
        if (kind(ubound_dim2)/=i2_kind)print *,'fail'
        if (2                /=i2_kind)print *,'fail'
        if (.not.present(a))print *,'fail'
        if (len(a)/=2)print *,'fail'
        if (any(a(:ubound_dim2)/=reshape(input_check_value,x2_shape)))
     1       print *,'fail'
        if (.not.present(vector_subscript_flag))print *,'fail'
        if (vector_subscript_flag) return
        a(:ubound_dim2)=reshape(return_value,x2_shape)
        end subroutine
        subroutine x4(a,vector_subscript_flag)
        use  vector_subscript_m
        use  loop_c_m
        implicit none
        logical (kind=1),optional::vector_subscript_flag
        character (len=*,kind=1),optional,
     1       dimension(lbound_dim1:*) ::a
        allocate (vector_subscript( size(a(:ubound_dim2)) ))
        vector_subscript=(/ (loop_c,loop_c=lbound_dim1,ubound_dim2) /)
        if (size(a(vector_subscript),dim=1)/=4)print *,'fail'
        if (kind(lbound_dim1)/=i2_kind)print *,'fail'
        if (kind(ubound_dim2)/=i2_kind)print *,'fail'
        if (2                /=i2_kind)print *,'fail'
        if (.not.present(a))print *,'fail'
        if (len(a)/=2)print *,'fail'
        if (any(a(vector_subscript)/=
     1              reshape(input_check_value,x2_shape)))print *,'fail'
        if (.not.present(vector_subscript_flag))print *,'fail'
        if (vector_subscript_flag) return
        a(vector_subscript)=reshape(return_value,x2_shape)
        end subroutine
      end 
      subroutine s1  
      use caller_vector_subscript_m
      allocate (v_s(2))
      v_s(1)=1; v_s(2)=2
      call s11
      call s12
      call s13
      call s14
      call s15
      end subroutine
      subroutine s11
      use flag_m
      use m1
      use caller_vector_subscript_m
      character(len=2,kind=1),dimension(2,2,2):: a1
      a1(:,2,:)=input_check_value
       call x1(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
c     a1(:,2,:)=input_check_value
       call x2(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
c     a1(:,2,:)=input_check_value
       call x3(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
c     a1(:,2,:)=input_check_value
       call x4(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
      end
      subroutine s12
      character(len=2,kind=1),dimension(2,2,2):: a1
      call s121(a1)
      end
      subroutine s121(a1)
      use flag_m
      use m1
      use caller_vector_subscript_m
      character(len=*,kind=1),dimension(2,2,2):: a1
      a1(:,2,:)=input_check_value
       call x1(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
c     a1(:,2,:)=input_check_value
       call x2(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
c     a1(:,2,:)=input_check_value
       call x3(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
c     a1(:,2,:)=input_check_value
       call x4(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,2,v_s))
c      if (any(a1(:,2,:)/=return_value))print *,'fail'
      end
      subroutine s13
      use m1
      character(len=2,kind=1),dimension(2,2,2):: a1
      call s131(a1(:,2,:))
c     if (any(a1(:,2,:)/=return_value))print *,'fail'
      call s132(a1(:,2,:))
c     if (any(a1(:,2,:)/=return_value))print *,'fail'
      call s133(a1(:,2,:))
c     if (any(a1(:,2,:)/=return_value))print *,'fail'
      call s134(a1(:,2,:))
c     if (any(a1(:,2,:)/=return_value))print *,'fail'
      contains
      subroutine s131(a1)
      use flag_m
      use m1
      use caller_vector_subscript_m
      character(len=*,kind=1),dimension(:,:):: a1
      a1=input_check_value
       call x1(vector_subscript_flag=logical(t,kind=1),a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      subroutine s132(a1)
      use flag_m
      use m1
      use caller_vector_subscript_m
      character(len=*,kind=1),dimension(:,:):: a1
c     a1=input_check_value
       call x2(vector_subscript_flag=logical(t,kind=1),a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      subroutine s133(a1)
      use flag_m
      use m1
      use caller_vector_subscript_m
      character(len=*,kind=1),dimension(:,:):: a1
c     a1=input_check_value
       call x3(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      subroutine s134(a1)
      use flag_m
      use m1
      use caller_vector_subscript_m
      character(len=*,kind=1),dimension(:,:):: a1
c     a1=input_check_value
       call x4(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      end
      subroutine s14
      use caller_vector_subscript_m
      use m1,
     1            xyz1=> lbound_dim1, xyz2=>ubound_dim1,
     1            xyz3=> lbound_dim2, xyz4=>ubound_dim2
      character(len=2,kind=1),dimension(2,2,3,2):: a1
      integer,pointer,dimension(:)::v_s3
      allocate(v_s3(3));v_s3(1)=1;v_s3(2)=2;v_s3(3)=3
      call s141(a1(v_s,2,v_s3,v_s),
     1   lbound(a1,dim=1),ubound(a1,dim=1),
     1   lbound(a1,dim=4),ubound(a1,dim=4))
c      if (any(a1(v_s,2,3,v_s)/=return_value))print *,'fail'
      call s142(a1(v_s,2,v_s3,v_s),
     1   lbound(a1,dim=1),ubound(a1,dim=1),
     1   lbound(a1,dim=4),ubound(a1,dim=4))
c      if (any(a1(v_s,2,3,v_s)/=return_value))print *,'fail'
      call s143(a1(v_s,2,v_s3,v_s),
     1   lbound(a1,dim=1),ubound(a1,dim=1),
     1   lbound(a1,dim=4),ubound(a1,dim=4))
c      if (any(a1(v_s,2,3,v_s)/=return_value))print *,'fail'
      call s144(a1(v_s,2,v_s3,v_s),
     1   lbound(a1,dim=1),ubound(a1,dim=1),
     1   lbound(a1,dim=4),ubound(a1,dim=4))
c      if (any(a1(:,2,3,:)/=return_value))print *,'fail'
      contains
      subroutine s141(a1,lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2)
      use flag_m
      integer            lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2
      character(len=*,kind=1),
     1  dimension(lbound_dim1:ubound_dim1,3,lbound_dim2:ubound_dim2)::a1
      a1(:,3,:)=input_check_value
       call x1(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,3,v_s))
c      if (any(a1(:,3,:)/=return_value))print *,'fail'
      end subroutine
      subroutine s142(a1,lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2)
      use flag_m
      integer            lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2
      character(len=*,kind=1),
     1  dimension(lbound_dim1:ubound_dim1,3,lbound_dim2:ubound_dim2)::a1
      a1(:,3,:)=input_check_value
       call x2(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,3,v_s))
c      if (any(a1(:,3,:)/=return_value))print *,'fail'
      end subroutine
      subroutine s143(a1,lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2)
      use flag_m
      integer            lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2
      character(len=*,kind=1),
     1  dimension(lbound_dim1:ubound_dim1,3,lbound_dim2:ubound_dim2)::a1
      a1(:,3,:)=input_check_value
       call x3(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,3,v_s))
c      if (any(a1(:,3,:)/=return_value))print *,'fail'
      end subroutine
      subroutine s144(a1,lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2)
      use flag_m
      integer            lbound_dim1,ubound_dim1,
     1                   lbound_dim2,ubound_dim2
      character(len=*,kind=1),
     1  dimension(lbound_dim1:ubound_dim1,3,lbound_dim2:ubound_dim2)::a1
      a1(:,3,:)=input_check_value
       call x4(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,3,v_s))
c      if (any(a1(:,3,:)/=return_value))print *,'fail'
      end subroutine
      end
      subroutine s15
      use m1
      use caller_vector_subscript_m
      character(len=2,kind=1),pointer,dimension(:,:):: a1
      character(len=2,kind=1),allocatable,target,dimension(:,:,:)::
     1  target
      allocate (target(2,3,2))
      a1=>target(:,3,:)
      call s151(a1)
       if (any(target(:,3,:)/=input_check_value))print *,'fail'
      call s152(a1)
       if (any(target(:,3,:)/=input_check_value))print *,'fail'
      call s153(a1)
       if (any(target(:,3,:)/=input_check_value))print *,'fail'
      call s154(a1)
       if (any(target(:,3,:)/=input_check_value))print *,'fail'
      contains
      subroutine s151(a1)
      use flag_m
      character(len=*,kind=1),pointer,dimension(:,:):: a1
      a1=input_check_value
       call x1(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      subroutine s152(a1)
      use flag_m
      character(len=*,kind=1),pointer,dimension(:,:):: a1
c     a1=input_check_value
       call x2(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      subroutine s153(a1)
      use flag_m
      character(len=*,kind=1),pointer,dimension(:,:):: a1
c     a1=input_check_valut
       call x3(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine
      subroutine s154(a1)
      use flag_m
      character(len=*,kind=1),pointer,dimension(:,:):: a1
c     a1=input_check_value
       call x4(vector_subscript_flag=logical(t,kind=1), a=a1(v_s,v_s))
c      if (any(a1/=return_value))print *,'fail'
      end subroutine s154
      end
