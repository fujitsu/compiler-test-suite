USE iso_fortran_env
type :: t1

type(LOCK_TYPE) :: jj
type(LOCK_TYPE),allocatable :: ii[:]
   end type t1

   type t2
type(LOCK_TYPE),allocatable :: ll[:]
type(LOCK_TYPE) :: kk
   end type
    
   type t3
type(LOCK_TYPE),allocatable :: ob
   end type


   type (t1)  :: obj
   type (t2)  :: obj2
   type (t3)  :: obj3
    
   
   end

