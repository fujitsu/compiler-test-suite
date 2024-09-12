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
     integer(kind=8) :: i1
     integer(kind=8) :: i2
     integer(kind=8) :: i3
     integer(kind=8) :: i4
     integer(kind=8) :: i5
     integer(kind=8) :: i6
     integer(kind=8) :: i7
     integer(kind=8) :: count = 3
     integer(kind=8) :: i1_2
     integer(kind=8) :: i2_2
     integer(kind=8) :: i3_2
     integer(kind=8) :: i4_2
     integer(kind=8) :: i5_2
     integer(kind=8) :: i6_2
     integer(kind=8) :: i7_2
     integer :: baseTYPE
     integer(kind=8) :: dest_ioproc = 3
     integer(kind=8) :: i1_3
     integer(kind=8) :: i2_3
     integer(kind=8) :: i3_3
     integer(kind=8) :: i4_3
     integer(kind=8) :: i5_3
     integer(kind=8) :: i6_3
     integer(kind=8) :: i7_3
     integer(kind=8) :: dest_ioindex = 3
     integer(kind=8) :: i1_4
     integer(kind=8) :: i2_4
     integer(kind=8) :: i3_4
     integer(kind=8) :: i4_4
     integer(kind=8) :: i5_4
     integer(kind=8) :: i6_4
     integer(kind=8) :: i7_4
     integer(kind=8) :: rfrom = 3
     integer(kind=8) :: i1_5
     integer(kind=8) :: i2_5
     integer(kind=8) :: i3_5
     integer(kind=8) :: i4_5
     integer(kind=8) :: i5_5
     integer(kind=8) :: i6_5
     integer(kind=8) :: i7_5
     integer(kind=8) :: rtype = 3
     integer(kind=8) :: i1_6
     integer(kind=8) :: i2_6
     integer(kind=8) :: i3_6
     integer(kind=8) :: i4_6
     integer(kind=8) :: i5_6
     integer(kind=8) :: i6_6
     integer(kind=8) :: i7_6
     integer(kind=8) :: scount = 3
     integer(kind=8) :: i1_7
     integer(kind=8) :: i2_7
     integer(kind=8) :: i3_7
     integer(kind=8) :: i4_7
     integer(kind=8) :: i5_7
     integer(kind=8) :: i6_7
     integer(kind=8) :: i7_7
     integer(kind=8) :: stype = 3
     integer(kind=4) :: async_id
     integer(kind=8) :: i1_8
     integer(kind=8) :: i2_8
     integer(kind=8) :: i3_8
     integer(kind=8) :: i4_8
     integer(kind=8) :: i5_8
     integer(kind=8) :: i6_8
     integer(kind=8) :: i7_8
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
