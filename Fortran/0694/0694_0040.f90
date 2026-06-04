type y
  integer x1
  integer x2
end type
      type element
         type(y), pointer :: p(:,:,:,:)
      end type
      type (element) q(5)

      type(y), target, dimension(5,2,2,2,2)::t

      do i = 1,5
         q(i)%p => t(i,:,:,:,:)
      enddo 

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i,:,:,:,:) = y(i,i)
      enddo
      if (any(q(1)%p%x1 /= 1))print *,"fail"
      if (any(q(1)%p%x2 /= 1))print *,"fail"
      if (any(q(2)%p%x1 /= 1))print *,"fail"
      if (any(q(2)%p%x2 /= 1))print *,"fail"
      if (any(q(3)%p%x1 /= 2))print *,"fail"
      if (any(q(3)%p%x2 /= 2))print *,"fail"
      if (any(q(4)%p%x1 /= 3))print *,"fail"
      if (any(q(4)%p%x2 /= 3))print *,"fail"
      if (any(q(5)%p%x1 /= 4))print *,"fail"
      if (any(q(5)%p%x2 /= 4))print *,"fail"
      print *,'pass'
      end
