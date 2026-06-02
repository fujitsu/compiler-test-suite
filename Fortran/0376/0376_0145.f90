      type element
         integer, pointer, dimension(:)::p
      end type
      type (element) q(5)
      integer, target, dimension(25)::t

      n = 5
      do i = 1,5
         q(i)%p => t((i-1)*n + 1:i*n)
      enddo

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 25
         t(i) = i
      enddo
      if (any(q(3)%p .ne. (/6,7,8,9,10/))) &
     &     stop 'lfc failure: must be 6 7 8 9 10'
      print *,'pass'
      end

