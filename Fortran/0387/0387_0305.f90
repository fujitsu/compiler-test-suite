interface
 subroutine sub1
 end subroutine
 subroutine sub2
 end subroutine
 subroutine sub3
 end subroutine
 subroutine sub4
 end subroutine
 subroutine sub5
 end subroutine
end interface

      type element
         integer, pointer :: p
         procedure(sub1),nopass,pointer :: pp
      end type
      type (element) q(5)

      integer, target, dimension(5)::t
      common /com/ n

      n = 5
      do i = 1,5
         q(i)%p => t(i)
      enddo 
      q(1)%pp => sub1
      q(2)%pp => sub2
      q(3)%pp => sub3
      q(4)%pp => sub4
      q(5)%pp => sub5

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i) = i
      enddo
      if (q(1)%p /= 1)print *,'error-01'
      if (q(2)%p /= 1)print *,'error-02'
      if (q(3)%p /= 2)print *,'error-03'
      if (q(4)%p /= 3)print *,'error-04'
      if (q(5)%p /= 4)print *,'error-05'

      forall (i = 2:5)
         q(i)%pp => q(i-1)%pp
      end forall

      do i = 1, 5
         t(i) = i
      enddo
      if (.not.associated(q(1)%pp,sub1))print *,'error-11'
      if (.not.associated(q(2)%pp,sub1))print *,'error-12'
      if (.not.associated(q(3)%pp,sub2))print *,'error-13'
      if (.not.associated(q(4)%pp,sub3))print *,'error-14'
      if (.not.associated(q(5)%pp,sub4))print *,'error-15'

      n=0
      call q(1)%pp
      if (n/=1)print *,'error-101'
      n=0
      call q(2)%pp
      if (n/=1)print *,'error-102'
      n=0
      call q(3)%pp
      if (n/=2)print *,'error-103'
      n=0
      call q(4)%pp
      if (n/=3)print *,'error-104'
      n=0
      call q(5)%pp
      if (n/=4)print *,'error-105'
      print *,'pass'
      end
      subroutine sub1
      common /com/ n
      n=1
      end
      subroutine sub2
      common /com/ n
      n=2
      end
      subroutine sub3
      common /com/ n
      n=3
      end
      subroutine sub4
      common /com/ n
      n=4
      end
      subroutine sub5
      common /com/ n
      n=5
      end
