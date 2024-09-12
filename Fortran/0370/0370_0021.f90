module wrf_data_pio
  type, public :: DecompMap_t
     integer(kind=4) :: start
     integer(kind=4) :: length
  end type DecompMap_t

  type, public :: IO_desc2_t
     integer(kind=4)         ::  fileTYPE
     integer(kind=4)         ::  elemTYPE
     integer(kind=4)         :: n_words
     integer(kind=4)     :: n_elemTYPE
  end type IO_desc2_t

  type, public :: io_desc_t
     type(IO_desc2_t)    :: Read
     type(IO_desc2_t)    :: Write
     integer(kind=4), pointer :: start(:) => NULL()
     integer(kind=4), pointer :: count(:) => NULL()
     integer :: baseTYPE
     integer, pointer :: dest_ioproc(:)=> NULL()
     integer(kind=4), pointer :: dest_ioindex(:)=> NULL()
     integer,pointer :: rfrom(:)=> NULL()
     integer,pointer :: rtype(:)=> NULL()
     integer,pointer :: scount(:)=> NULL()
     integer,pointer :: stype(:)=> NULL()
     integer(kind=4) :: async_id
     type (DecompMap_t)  :: IOmap
     type (DecompMap_t)  :: COMPmap
     integer :: nrecvs
     integer(kind=4)         :: glen
     integer(kind=4)         :: compsize
     integer(kind=4)         :: maxiobuflen
     integer(kind=4)         :: ndof
     integer(kind=4)         :: padding
  end type io_desc_t

  type :: wrf_data_handle
     type (io_desc_t),  dimension(30) :: ioVar
  end type wrf_data_handle
  
  type(wrf_data_handle),target,save      :: WrfDataHandles(99)
end module wrf_data_pio

stop
end
