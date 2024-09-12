module cotest1
  implicit none
  integer:: no=1
contains

subroutine sub(adata,sdata)
  character(len=*),dimension(:) :: adata
  character(len=*),dimension(:) :: sdata

  no=no+1

  adata(:)='0000000000'
 
  write(1,*),no,'bf:',len_trim(adata)

  adata(:)=sdata(:)

  write(1,*),no,'af:',len_trim(adata)
end subroutine sub

end module cotest1

program main
  use cotest1

  character(len=50) ,dimension(:), allocatable ::adata
  character(len=0)  ,dimension(:), allocatable ::sdata, udata
  character(len=100),dimension(:), allocatable ::tdata

  allocate( adata(10), sdata(10), udata(10), tdata(10) )
  adata(:)='0000000000'
  write(1,*),no,"bf:",len_trim(adata)

  adata(:)=''
  sdata(:)=''
  udata(:)=''
  tdata(:)=''

  write(1,*),no,"af:",len_trim(adata)

  call sub(adata,sdata)

  call sub(adata,udata)
 
  call sub(adata,tdata)
print *,'pass'

end program main
