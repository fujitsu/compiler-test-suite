
module mod
  integer(kind=8),target :: t1
  integer(kind=8),pointer :: p1
  data t1 /5/
  data p1 /t1/
  real(kind=4),target,dimension(5,2) :: mm1 = reshape((/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/),(/5,2/))
contains
  subroutine sub
    integer(kind=8),target :: m1
    integer(kind=8),pointer :: pa
    integer(kind=8),pointer :: pb
    integer ret
    data m1 /10/
    data pa /t1/
    data pb /m1/

    print *, pa
    print *, pb
    call subsub()
    ret = subfunc()
    print *, ret
  contains
    subroutine subsub
      integer(kind=8),target :: ms1
      integer(kind=8),pointer :: psa
      integer(kind=8),pointer :: psb
      integer(kind=8),pointer :: psc
      data ms1 /20/
      data psa /t1/
      data psb /m1/
      data psc /ms1/
      
      print *, "subsub"
      print *, psa
      print *, psb
      print *, psc
    end subroutine subsub
    integer function subfunc()
      integer(kind=8),target :: mf1
      integer(kind=8),pointer :: pfa
      integer(kind=8),pointer :: pfb
      integer(kind=8),pointer :: pfc
      real(kind=4),pointer :: pm1(:,:)
      real(kind=4),pointer :: pm2
      real(kind=4),pointer :: pm3(:,:)
      real(kind=4),pointer :: pm4(:,:)
      data mf1 /100/
      data pfa /t1/
      data pfb /m1/
      data pfc /mf1/
      data pm1 /mm1/
      data pm2 /mm1(3,2)/
      data pm3 /mm1(3:5,1:2)/
      data pm4 /mm1(2:4:2,1:2)/

      print *, "subfunc"
      print *, pfa
      print *, pfb
      print *, pfc
      print *, pm1
      print *, pm2
      print *, pm3
      print *, pm4
      subfunc = pfa+pfb+pfc
    end function subfunc
  end subroutine sub
end module mod

use mod
print *, p1
call sub
end program
