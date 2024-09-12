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
     integer(kind=8) :: start = 3
     integer(kind=8) :: count = 3
     integer :: baseTYPE
     integer(kind=8) :: dest_ioproc = 3
     integer(kind=8) :: dest_ioindex = 3
     integer(kind=8) :: rfrom = 3
     integer(kind=8) :: rtype = 3
     integer(kind=8) :: scount = 3
     integer(kind=8) :: stype = 3
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
  
  type(wrf_data_handle),target,save      :: WrfDataHandles(44)
end module wrf_data_pio

stop
end
