 call s1
 print *,'pass'
 end
 module m1
  type xx
    character*3,pointer:: xxs1=>null()
    character*3,pointer,dimension(:,:,:,:,:,:,:):: xxa1=>null()
    type(xx),pointer::xxs2=>null()
    type(xx),pointer,dimension(:,:,:,:,:,:,:)::xxa2=>null()
  end type
  contains
    function   chks(p)
    character*(*),pointer::p
    character*(len(p)),pointer::chks
    if (len(p)/=3)write(6,*) "NG"
    if (len(chks)/=3)write(6,*) "NG"
    if (associated(p))write(6,*) "NG"
    allocate(p,chks)
    p='123'
    chks=p
    end function
    function   chka(p)
    character*(*),pointer,dimension(:,:,:,:,:,:,:)::p
    character*(len(p)),pointer,dimension(:,:,:,:,:,:,:)::chka
    if (len(p)/=3)write(6,*) "NG"
    if (len(chka)/=3)write(6,*) "NG"
    if (associated(p))write(6,*) "NG"
    allocate(p(1,1,1,1,1,1,2),chka(1,1,1,1,1,1,2))
    p='123'
    chka=p
    end function
    subroutine   chkxs(p)
    character*(*),pointer::p
    if (len(p)/=3)write(6,*) "NG"
    if (.not.associated(p))write(6,*) "NG"
    if (p/='123')write(6,*) "NG"
    end subroutine
    subroutine   chkxa(p)
    character*(*),pointer,dimension(:,:,:,:,:,:,:)::p
    if (len(p)/=3)write(6,*) "NG"
    if (.not.associated(p))write(6,*) "NG"
    if (any(shape(p)/=(/1,1,1,1,1,1,2/)))write(6,*) "NG"
    if (any(p/='123'))write(6,*) "NG"
    end subroutine
 end
 subroutine s1
  character*3,pointer:: xs2
  character*3,pointer,dimension(:,:,:,:,:,:,:):: xa2
  call ss1(null(xs2),null(xa2))
 contains
 subroutine ss1(xs2,xa2)
  use m1
  character*(*),pointer:: xs2
  character*(*),pointer,dimension(:,:,:,:,:,:,:):: xa2
  type(xx)::xs1
  type(xx),target::xst,xat(1,1,1,1,1,1,2)
  call chkxs( chks(null(xs1%xxs1) ))
  call chkxa( chka(null(xs1%xxa1) ))
  xs1%xxs2=>xst
  xs1%xxa2=>xat
  call chkxs(chks(null(xs1%xxs2%xxs1)))
  call chkxa(chka(null(xs1%xxs2%xxa1)))
  call chkxs(chks(null(xs1%xxa2(1,1,1,1,1,1,2)%xxs1)))
  call chkxa(chka(null(xs1%xxa2(1,1,1,1,1,1,2)%xxa1)))
  call chkxs( chks(null(xs2) ))
  call chkxa( chka(null(xa2) ))
 end subroutine
end