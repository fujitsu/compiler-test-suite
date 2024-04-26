module MPI_f08_types
  type :: MPI_Comm  
     integer :: x
  end type MPI_Comm
end module MPI_f08_types

module m2           
  interface         
     subroutine s1(p)
       use MPI_f08_types
       type(MPI_Comm) :: p
     end subroutine s1
  end interface
end module m2

module mpi_c_interface_glue
contains
  subroutine sub (proc)
    use :: m2
    procedure (s1) :: proc
  end subroutine sub
end module mpi_c_interface_glue

program main              
use mpi_c_interface_glue  

print *,'pass'
end program

