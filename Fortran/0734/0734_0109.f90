      module test
        private
        character (len=42), save, public ::       a, b, c
        namelist /testlist/ a,b,c
        public :: sub
        contains
          subroutine sub
            integer :: iostatus
            read (unit=*, nml=testlist, iostat=iostatus)
            write (*,*) "Test"
          end subroutine sub
      end module test
      use test
      print *,'pass'
      end
