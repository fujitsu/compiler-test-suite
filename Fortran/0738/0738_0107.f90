type z
  integer(4),allocatable,dimension(:)::za
end type

type (z)    ,allocatable,dimension(:,:,:,:)::a
type (z)                ,dimension(2,2,2,2)::b

  k1=1;k2=2

  allocate(a(2,2,2,2))

  j=0
  do i1=1,2
    do i2=1,2
      do i3=1,2
        do i4=1,2
          j=j+1
          allocate(a(i1,i2,i3,i4)%za(2))
          a(i1,i2,i3,i4)%za = j
        enddo
      enddo
    enddo
  enddo

  b(:,:,:,:) = a(:,:,:,:)

  j=0
  do i1=1,2
    do i2=1,2
      do i3=1,2
        do i4=1,2
          deallocate(a(i1,i2,i3,i4)%za)
          j=j+1
          if (.not.allocated(b(i1,i2,i3,i4)%za)) write(6,*) "NG"
          if (any(b(i1,i2,i3,i4)%za/=j)) write(6,*) "NG" 
        enddo
      enddo
    enddo
  enddo
  deallocate(a)

  print *,'pass'
end
