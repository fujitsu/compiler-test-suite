call random
print *,'pass'
end
subroutine random
   implicit none
   real harvest(1000000)
   integer, allocatable :: seed(:)
   integer s
   integer i
   save

   call random_seed(size=s)
   allocate(seed(s))
   call random_seed()
   do i = 1, 100
      write(1,'(a,i0)') 'i = ', i
      call random_seed(get=seed)
      call random_number(harvest)
      if(any(harvest >= 1)) then
         write(*,'(a)') 'Found violation'
         s = sum(maxloc(harvest))
         call random_seed(put=seed)
         call random_number(harvest(:s-1))
         call random_seed(get=seed)
         call random_number(harvest(1))
         write(*,'(a,100(1x:z8.8))') 'Illegal seed = ', seed
         write(*,'(a,f11.8,a,z8.8)') 'Illegal value = ', harvest(1), &
            ' Hex: ', transfer(harvest(1), 1)
      end if
   end do
end 
