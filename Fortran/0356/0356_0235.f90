module test_data
  implicit none
  integer, parameter :: lelt=2400

  integer, allocatable :: &
       &  sje (:,:,    :,:), &
       &  cbc (        :,:), &
       &  diagn (:,:,:)
end module test_data

program test
  use test_data
  implicit none
  integer iel,cb1,cb3,ntemp
  integer, parameter :: nelt=2003

  allocate(sje(2,2,6,lelt))
  allocate(cbc(6,lelt))
  allocate(diagn(2,12,lelt))

  do iel=1,nelt
     sje(1,1,1,iel)=iel+1
     sje(1,1,3,iel)=iel+3
     sje(1,1,5,iel)=iel+5
  end do
  cbc=2
  diagn=0
  do iel=1,16
     cb1=cbc(1,iel)
     cb3=cbc(3,iel)

     if(cb1.eq.2)then
        ntemp=sje(1,1,1,iel)
        diagn(1,2,iel)=sje(1,1,3,ntemp)
     end if

     if(cb3.eq.2)then
        ntemp=sje(1,1,3,iel)
        diagn(1,10,iel)=sje(1,1,5,ntemp)
     end if
  end do

  do iel=1,16
     print*, "diagn(1,2,",iel,") ",diagn(1,2,iel)
     print*, "diagn(1,10,",iel,") ",diagn(1,10,iel)
  end do
end program test
