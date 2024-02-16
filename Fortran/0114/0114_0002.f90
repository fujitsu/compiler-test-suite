       module mod0
         integer(4),allocatable,dimension(:)::ii
        contains
         subroutine sub()
          ii(1)=1
         end subroutine
       end module

       program aa
        use mod0
         allocate(ii(2))
         call sub()
         if (ii(1).ne.1) print *,'error'
	 print *,'pass'
       end program

