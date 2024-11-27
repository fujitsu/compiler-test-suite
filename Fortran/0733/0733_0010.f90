    type P
        real,dimension(:),pointer :: PONT
    end type

    type (P),allocatable  :: LISTA(:)
    allocate (LISTA(100))
    do i=1,100
        allocate (LISTA(i)%PONT(i))
        LISTA(i)%PONT=i
    end do
   do i=1,100
        if (any(abs(LISTA(i)%PONT-i)>0.0001))print *,'error'
        deallocate(LISTA(i)%PONT)
   end do
   do i=1,100
        if (associated(LISTA(i)%PONT))print *,'error-2'
   end do
   deallocate (LISTA)
        if (allocated(LISTA))print *,'error-3'
print *,'pass'
end
