       module mod
         integer(4),allocatable,dimension(:)::ii
       end module
       module mod0
	use mod,jj=>ii
        contains
         subroutine sub()
          jj(1)=1
         end subroutine
         subroutine bar()
	 use mod
         allocate(ii(2))
         call sub()
         if (ii(1).ne.1) print *,'error'
         end subroutine
       end module

       program aa
        use mod0
	call bar
	print *,'PASS'
       end program

