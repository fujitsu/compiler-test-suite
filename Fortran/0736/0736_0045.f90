      call s1
      print *,'pass'
      end
      module aa
      contains
        subroutine m_1(p1,p2)
        integer,optional,allocatable,dimension(:,:):: p1,p2
        if (present(p1))write(6,*) "NG"
        if (.not.present(p2))write(6,*) "NG"
        allocate (p2(-2:-1,-12:-11))
        p2(-2,-12)=1
        p2(-1,-12)=2
        p2(-2,-11)=3
        p2(-1,-11)=4
        end subroutine m_1
      end module aa 
      subroutine s1 
      use aa
      integer,allocatable,dimension(:,:):: p
      type p_a
       complex dummy
       integer,allocatable,dimension(:,:):: pp
       type (p_a),pointer:: ppp
      end type
      type (p_a) x
      call m_1(p2=p)
      if (p(-2,-12)/=1)write(6,*) "NG"
      if (p(-1,-12)/=2)write(6,*) "NG"
      if (p(-2,-11)/=3)write(6,*) "NG"
      if (p(-1,-11)/=4)write(6,*) "NG"
      call m_1(p2=x%pp)
      if (x%pp(-2,-12)/=1)write(6,*) "NG"
      if (x%pp(-1,-12)/=2)write(6,*) "NG"
      if (x%pp(-2,-11)/=3)write(6,*) "NG"
      if (x%pp(-1,-11)/=4)write(6,*) "NG"
      end 
