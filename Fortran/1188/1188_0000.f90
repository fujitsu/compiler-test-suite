module mod01
  implicit none
  integer, parameter :: sp = kind(1.0)
  integer, parameter :: dp = selected_real_kind(2*precision(1.0_sp))
end module mod01
module mod02
  use mod01, only: dp
  implicit none

  public :: ty001, mod01_proc01

  type :: ty001
    integer :: yrtprt = 0
    integer :: jsyshdfff = 0
    integer :: nbd = 0
    integer, allocatable :: id(:)
    integer, allocatable :: hhhssssnnmm(:)
    character(len=4), allocatable :: yymk(:)
    real(dp), allocatable :: xyz(:, :)
    integer :: uhf = 0
    real(dp) :: charge = 0.0_dp
    real(dp), allocatable :: utywoex(:, :)
    logical, allocatable :: rtwexhs(:)
    integer, allocatable :: bond(:, :)
  end type ty001

contains

  subroutine mod01_proc01(jstwudg, hhhssssnnmm, yymk, xyz)
    type(ty001), intent(out) :: jstwudg
    integer, intent(in) :: hhhssssnnmm(:)
    character(len=*), intent(in) :: yymk(:)
    real(dp), intent(in) :: xyz(:,:)

    integer :: ndim, hsystdd
    integer, allocatable :: hysiwgg(:)

    ndim = min(size(hhhssssnnmm, 1), size(xyz, 2), size(yymk, 1))

    jstwudg%yrtprt = ndim
    allocate(jstwudg%id(ndim))
    allocate(jstwudg%xyz(3, ndim))

    allocate(jstwudg%utywoex(0, 0))

    allocate(jstwudg%rtwexhs(1))
    jstwudg%rtwexhs(:) = .false.

    call gggggxhsjd_yymkbol(jstwudg%jsyshdfff, jstwudg%id, yymk)
    allocate(hysiwgg(jstwudg%jsyshdfff))
    call hsysgdkk(jstwudg%id, hysiwgg)

    allocate(jstwudg%hhhssssnnmm(jstwudg%jsyshdfff))
    allocate(jstwudg%yymk(jstwudg%jsyshdfff))
    do hsystdd = 1, jstwudg%jsyshdfff
       jstwudg%hhhssssnnmm(hsystdd) = hhhssssnnmm(hysiwgg(hsystdd))
       jstwudg%yymk(hsystdd) = yymk(hysiwgg(hsystdd))
    end do
    jstwudg%xyz(:, :) = xyz(:, :ndim)

    jstwudg%charge = 0.0_dp

    jstwudg%uhf = 0
  end subroutine mod01_proc01


  pure subroutine gggggxhsjd_yymkbol(jsyshdfff, ystdjdhwrr, yymkbol)
   integer, intent(out) :: jsyshdfff
   character(len=*), intent(in) :: yymkbol(:)
   integer, intent(out) :: ystdjdhwrr(:)
   character(len=len(yymkbol)), allocatable :: ksjhdydydd(:)
   integer :: yrtprt, kkjjsss, hsystdd

   yrtprt = size(ystdjdhwrr)
   allocate(ksjhdydydd(yrtprt))
   jsyshdfff = 0
   do kkjjsss = 1, yrtprt
      hsystdd = find_yymkbol(ksjhdydydd(:jsyshdfff), yymkbol(kkjjsss))
      if (hsystdd == 0) then
         call append_yymkbol(ksjhdydydd, jsyshdfff, yymkbol(kkjjsss))
         hsystdd = jsyshdfff
      end if
      ystdjdhwrr(kkjjsss) = hsystdd
   end do
  end subroutine gggggxhsjd_yymkbol


  pure subroutine hsysgdkk(ystdjdhwrr, hysiwggping)
   integer, intent(in) :: ystdjdhwrr(:)
   integer, intent(out) :: hysiwggping(:)
   integer :: hsystdd, kkjjsss

   do hsystdd = 1, size(hysiwggping)
      do kkjjsss = 1, size(ystdjdhwrr)
         if (ystdjdhwrr(kkjjsss) == hsystdd) then
            hysiwggping(hsystdd) = kkjjsss
            exit
         end if
      end do
   end do
  end subroutine hsysgdkk


  pure function find_yymkbol(pppskks, yymkbol) result(tyrsgsshh)
   character(len=*), intent(in) :: pppskks(:)
   character(len=*), intent(in) :: yymkbol
   integer :: tyrsgsshh
   integer :: iyymk

   tyrsgsshh = 0
   do iyymk = 1, size(pppskks)
      if (yymkbol == pppskks(iyymk)) then
         tyrsgsshh = iyymk
         exit
      end if
   end do
  end function find_yymkbol


  pure subroutine append_yymkbol(pppskks, npppskks, yymkbol)
   character(len=*), allocatable, intent(inout) :: pppskks(:)
   integer, intent(inout) :: npppskks
   character(len=*), intent(in) :: yymkbol

   if (npppskks >= size(pppskks)) then
      call ytsts_hsgss(pppskks)
   end if

   npppskks = npppskks + 1
   pppskks(npppskks) = yymkbol
  end subroutine append_yymkbol


  pure subroutine ytsts_hsgss(vvvvvaaarr, n)
   character(len=*), allocatable, intent(inout) :: vvvvvaaarr(:)
   integer, intent(in), optional :: n

   character(len=:), allocatable :: hsysysss(:)
   integer :: hshshsrww, kkktysys

   if (allocated(vvvvvaaarr)) then
      hshshsrww = size(vvvvvaaarr, 1)
      call move_alloc(vvvvvaaarr, hsysysss)
   else
      hshshsrww = 64
   end if

   if (present(n)) then
      kkktysys = n
   else
      kkktysys = hshshsrww + hshshsrww/2 + 1
   end if

   allocate(vvvvvaaarr(kkktysys))

   if (allocated(hsysysss)) then
      hshshsrww = min(size(hsysysss, 1), size(vvvvvaaarr, 1))
      vvvvvaaarr(:hshshsrww) = hsysysss(:hshshsrww)
      deallocate(hsysysss)
   end if
  end subroutine ytsts_hsgss

end module mod02
module mod03
  use mod01, only: dp
  use mod02, only: ty001
  implicit none

  public :: rttsiiis, new_mod03

  type :: rttsiiis
    real(dp), allocatable :: hsyrtrss(:)
    real(dp), allocatable :: rvdw(:, :)
    real(dp), allocatable :: r4yysysssr2(:)
    real(dp), allocatable :: wf
    integer, allocatable :: jshshhs(:)
    real(dp), allocatable :: cn(:, :)
    real(dp), allocatable :: hhshhsjsqq(:, :, :, :)
  end type rttsiiis

contains

  subroutine new_mod03(jstwudg, hhyyyccffgg)
   type(rttsiiis), intent(out) ::jstwudg
   class(ty001), intent(in) :: hhyyyccffgg

   integer :: rtswwww, ijshshhs, ystssssh,  jjshshhs
   integer :: mjshshhs

   jstwudg%wf = 4.0_dp

   allocate(jstwudg%jshshhs(hhyyyccffgg%jsyshdfff))
   jstwudg%jshshhs(:) = 4
   mjshshhs = maxval(jstwudg%jshshhs)

   allocate(jstwudg%hsyrtrss(hhyyyccffgg%jsyshdfff))
   do rtswwww = 1, hhyyyccffgg%jsyshdfff
     !jjjyiii = hhyyyccffgg%hhhssssnnmm(rtswwww)
     !jstwudg%hsyrtrss(rtswwww) = hyytsjjsjss(jjjyiii)
     jstwudg%hsyrtrss(rtswwww) = 1.0_dp
   end do

   allocate(jstwudg%r4yysysssr2(hhyyyccffgg%jsyshdfff))
   do rtswwww = 1, hhyyyccffgg%jsyshdfff
      jstwudg%r4yysysssr2(rtswwww) = 1.0_dp
   end do

   allocate(jstwudg%rvdw(hhyyyccffgg%jsyshdfff, hhyyyccffgg%jsyshdfff))
   do rtswwww = 1, hhyyyccffgg%jsyshdfff
      do ystssssh = 1, rtswwww
         jstwudg%rvdw(ystssssh, rtswwww) = 1.0_dp
      end do
   end do

   allocate(jstwudg%cn(mjshshhs, hhyyyccffgg%jsyshdfff), source=0.0_dp)
   do rtswwww = 1, hhyyyccffgg%jsyshdfff
      do ijshshhs = 1, jstwudg%jshshhs(rtswwww)
         jstwudg%cn(ijshshhs, rtswwww) = 1.0_dp
      end do
   end do

   allocate(jstwudg%hhshhsjsqq(mjshshhs, mjshshhs, hhyyyccffgg%jsyshdfff, hhyyyccffgg%jsyshdfff), source=0.0_dp)
   do rtswwww = 1, hhyyyccffgg%jsyshdfff
      do ystssssh = 1, rtswwww
         do ijshshhs = 1, jstwudg%jshshhs(rtswwww)
            do jjshshhs = 1, jstwudg%jshshhs(ystssssh)
               jstwudg%hhshhsjsqq(jjshshhs, ijshshhs, ystssssh, rtswwww) = 1.0_dp
            end do
         end do
      end do
   end do
  end subroutine new_mod03

end module mod03
module mod04
  implicit none

  public :: ty000

  type, abstract :: ty000
  contains
  procedure(mod04_interface), deferred :: hsysssrrrr
  end type ty000

  abstract interface
    subroutine mod04_interface(tttttyyy)
      import :: ty000
      class(ty000), intent(in) :: tttttyyy
    end subroutine mod04_interface
  end interface
end module mod04
module mod04gggggssjss
  use mod01, only: dp
  use mod04, only: ty000
  implicit none

  public :: type_mod04gggggssjss

  type, extends(ty000) :: type_mod04gggggssjss
    real(dp) :: shshys1
    real(dp) :: hhuustts2
    real(dp) :: kkskhsss3
    real(dp) :: hshshuss4
    real(dp) :: jhshsyss5
    real(dp) :: ssshhhk
  contains
    procedure :: hsysssrrrr
  end type type_mod04gggggssjss

contains

  subroutine hsysssrrrr(tttttyyy)
    class(type_mod04gggggssjss), intent(in) :: tttttyyy
    real(8):: a(6)
    integer::k
    write(51,*      ) tttttyyy%shshys1, tttttyyy%hhuustts2, tttttyyy%kkskhsss3, tttttyyy%hshshuss4, tttttyyy%jhshsyss5, tttttyyy%ssshhhk
     rewind 51
    read(51,*) a
    if (any(abs(a-[(0.3_8,k=1,5),14.0_8])>0.001)) print *,2893,a
  end subroutine hsysssrrrr

end module mod04gggggssjss
module mod04ypppss
  use mod01, only: dp
  use mod04, only: ty000
  implicit none

  public :: type_mod04ypppss

  type, extends(ty000) :: type_mod04ypppss
    real(dp) :: shshys1
    real(dp) :: hhuustts2
    real(dp) :: kkskhsss3
    real(dp) :: hhysstssr1
    real(dp) :: yysysssr2
    real(dp) :: hsysysr3
  contains
    procedure :: hsysssrrrr
  end type type_mod04ypppss

contains

  subroutine hsysssrrrr(tttttyyy)
    class(type_mod04ypppss), intent(in) :: tttttyyy
    write(6,'(1A)') "Parameters: 2"
    write(6,'(6E23.15)') tttttyyy%shshys1, tttttyyy%hhuustts2, tttttyyy%kkskhsss3, tttttyyy%hhysstssr1, tttttyyy%yysysssr2, tttttyyy%hsysysr3
  end subroutine hsysssrrrr

end module mod04ypppss

module mod_99
  use mod01, only: dp
  use mod03, only: rttsiiis, new_mod03
  use mod04, only: ty000
  use mod04gggggssjss, only: type_mod04gggggssjss
  use mod04ypppss, only: type_mod04ypppss
  use mod02, only: ty001, mod01_proc01
  implicit none

  public :: hrrrttssgg, hrrrttssggInput, hsysyssswww

  type :: hrrrttssggInput
    integer :: imod04_type
    real(dp) :: shshys1
    real(dp) :: hhuustts2
    real(dp) :: kkskhsss3
    real(dp) :: hshshuss4
    real(dp) :: jhshsyss5
    real(dp) :: ssshhhk
    real(dp) :: hhysstssr1
    real(dp) :: yysysssr2
    real(dp) :: hsysysr3
    integer, allocatable :: jjjyiii(:)
  end type hrrrttssggInput

  type :: hrrrttssgg
    type(ty001) :: hhyyyccffgg
    type(rttsiiis) ::   mod03
    class(ty000), allocatable :: kksksssspppp
  end type hrrrttssgg

contains

  subroutine hsysyssswww(tttttyyy, hyyyssssss, hshshiiis, hhshyysssuuu, hgststsnnn, hsysssqqq)
    type(hrrrttssgg), intent(out) :: tttttyyy
    type(hrrrttssggInput), intent(in) :: hyyyssssss
    integer, intent(in) :: hshshiiis
    integer, intent(in) :: hhshyysssuuu(:)
    real(dp), intent(in) :: hsysssqqq(:,:)
    character(len=*), intent(in) :: hgststsnnn(:)

    real(dp), parameter :: hhhhhty=14.0_dp, rrrrrhsys=1.0_dp
    integer, allocatable :: hhhssssnnmm(:)
    integer :: kkjjsss, jjjyiii

    hhhssssnnmm = hyyyssssss%jjjyiii(hhshyysssuuu)
    call mod01_proc01(tttttyyy%hhyyyccffgg, hhhssssnnmm, hgststsnnn, hsysssqqq)
    call new_mod03(tttttyyy%mod03, tttttyyy%hhyyyccffgg)
    do kkjjsss = 1, tttttyyy%hhyyyccffgg%yrtprt
       jjjyiii = tttttyyy%hhyyyccffgg%id(kkjjsss)
    write(78,*) jjjyiii
    end do
    select case(hyyyssssss%imod04_type)
    case(1)
      tttttyyy%kksksssspppp = type_mod04gggggssjss(shshys1=hyyyssssss%shshys1, hhuustts2=hyyyssssss%hhuustts2, kkskhsss3=hyyyssssss%kkskhsss3, &
          & hshshuss4=hyyyssssss%hshshuss4, jhshsyss5=hyyyssssss%jhshsyss5, ssshhhk=hhhhhty)
    case(2)
      tttttyyy%kksksssspppp = type_mod04ypppss(shshys1=hyyyssssss%shshys1, hhuustts2=hyyyssssss%hhuustts2, kkskhsss3=hyyyssssss%kkskhsss3, &
          & hhysstssr1=hyyyssssss%hhysstssr1, yysysssr2=rrrrrhsys, hsysysr3=hyyyssssss%hsysysr3)
    case default
      write(6,*     ) "???????"
      error stop
    end select
    do kkjjsss = 1, tttttyyy%hhyyyccffgg%yrtprt
       jjjyiii = tttttyyy%hhyyyccffgg%id(kkjjsss)
    end do
    call tttttyyy%kksksssspppp%hsysssrrrr()
  end subroutine hsysyssswww

end module mod_99
program main
  use mod01, only: dp
  use mod_99, only: hrrrttssgg, hrrrttssggInput, hsysyssswww
  implicit none

  integer, parameter :: yrtprt = 6
  integer, parameter :: jyyyssss = 2

  integer :: uuuysssggtt

  integer, allocatable :: hhshyysssuuu(:)
  real(dp), allocatable :: hsysssqqq(:,:)
  character(len=4), allocatable :: hgststsnnn(:)
  type(hrrrttssgg) :: hyystsspp
  type(hrrrttssggInput) :: hyyyssssss

  uuuysssggtt = 1

  allocate( hhshyysssuuu(yrtprt) )
  allocate( hsysssqqq(3,yrtprt) )
  allocate( hgststsnnn(yrtprt) )
  allocate( hyyyssssss%jjjyiii(jyyyssss) )

  hhshyysssuuu(1) = 2
  hhshyysssuuu(2) = 1
  hhshyysssuuu(3) = 1
  hhshyysssuuu(4) = 2
  hhshyysssuuu(5) = 2
  hhshyysssuuu(6) = 2

  hgststsnnn(1) = "O"
  hgststsnnn(2) = "H"
  hgststsnnn(3) = "H"
  hgststsnnn(4) = "O"
  hgststsnnn(5) = "O"
  hgststsnnn(6) = "O"

  hyyyssssss%jjjyiii(1) = 16
  hyyyssssss%jjjyiii(2) = 1

  hsysssqqq(:,:) = 0.0_dp

  hyyyssssss%imod04_type = uuuysssggtt
  hyyyssssss%shshys1 = 0.3_dp
  hyyyssssss%hhuustts2 = 0.3_dp
  hyyyssssss%kkskhsss3 = 0.3_dp
  hyyyssssss%hshshuss4 = 0.3_dp
  hyyyssssss%jhshsyss5 = 0.3_dp
  hyyyssssss%ssshhhk = 0.3_dp
  hyyyssssss%hhysstssr1 = 0.6_dp
  hyyyssssss%yysysssr2 = 0.6_dp
  hyyyssssss%hsysysr3 = 0.6_dp

  call hsysyssswww(hyystsspp, hyyyssssss, yrtprt, hhshyysssuuu, hgststsnnn, hsysssqqq)

  print *,'sngg523r : pass'
end
