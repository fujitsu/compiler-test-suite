module rtyw_dmpar_pmns
   type dm_pokc
     integer :: nprocs, ghyx, werwer, pokc
     logical :: knmknm_bbbxbb_werwer
   end type dm_pokc
   type rpmn_wcvg
     integer :: proczx
     integer :: wtwtkzx
     integer :: nrsrs
     integer, dimension(:), pointer :: rsrs
     type (rtyw_rpmn_wcvg), pointer :: klsjhj
     real (kind=8), dimension(:), pointer :: rpwqty
     integer, dimension(:), pointer           :: ipwqty
     integer :: reqzx
   end type rpmn_wcvg
   type rtyw_rpmn_wcvg
     integer :: endPointzx
     integer :: nrsrs
     integer, dimension(:), pointer :: srcwhwh
     integer, dimension(:), pointer :: destwhwh
     type (rtyw_rpmn_wcvg), pointer :: klsjhj
   end type rtyw_rpmn_wcvg
   type rtyw_rpmn_wcvg_pointer
     type (rtyw_rpmn_wcvg), pointer :: exchwhwh
   end type rtyw_rpmn_wcvg_pointer
   type rtyw_fdqut_rpmn_wcvg
     type (rtyw_rpmn_wcvg_pointer), dimension(:), pointer :: halos
   end type rtyw_fdqut_rpmn_wcvg
   type rtyw_werwerunication_wcvg
     integer :: proczx
     integer :: nrsrs
     real (kind=8), dimension(:), pointer :: rpwqty
     integer, dimension(:), pointer :: ipwqty
     integer :: reqzx
     type (rtyw_werwerunication_wcvg), pointer :: klsjhj
   end type rtyw_werwerunication_wcvg
end module rtyw_dmpar_pmns
module rtyw_gzgzgg_pmns
    use    rtyw_dmpar_pmns
   integer, parameter :: nTimeLevs = 2
   type io_pokc
      character (len=1) :: fgfgfggName
      character (len=1) :: units
      character (len=1) :: description
      integer, dimension(4) :: hgkkk
      integer, dimension(4) :: count
      logical :: zas
      logical :: sfc
      logical :: rehgkkk
      logical :: output
   end type io_pokc
   type fgfgfgg3Dbvbvbb
      type (rtwrs_pmn), pointer :: wtwtk
      real (kind=8), dimension(:,:,:), pointer :: array
      type (io_pokc), pointer :: iopkoj  
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(3) :: dimNames
      integer, dimension(3) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg3Dbvbvbb), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg3Dbvbvbb
   type att_wcvg_pmn
     type (att_wcvg_pmn), pointer :: klsjhj => null()
   end type att_wcvg_pmn
   type fgfgfgg2Dbvbvbb
      type (rtwrs_pmn), pointer :: wtwtk
      real (kind=8), dimension(:,:), pointer :: array
      type (io_pokc), pointer :: iopkoj 
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(2) :: dimNames
      integer, dimension(2) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg2Dbvbvbb), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg2Dbvbvbb
   type fgfgfgg1Dbvbvbb
      type (rtwrs_pmn), pointer :: wtwtk
      real (kind=8), dimension(:), pointer :: array
      type (io_pokc), pointer :: iopkoj
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(1) :: dimNames
      integer, dimension(1) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg1Dbvbvbb), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg1Dbvbvbb
   type fgfgfgg0Dbvbvbb
      type (rtwrs_pmn), pointer :: wtwtk
      real (kind=8) :: scalar
      type (io_pokc), pointer :: iopkoj  
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg0Dbvbvbb), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg0Dbvbvbb
   type fgfgfgg3DInteger
      type (rtwrs_pmn), pointer :: wtwtk
      integer, dimension(:,:,:), pointer :: array
      type (io_pokc), pointer :: iopkoj 
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(3) :: dimNames
      integer, dimension(3) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg3DInteger), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg3DInteger
   type fgfgfgg2DInteger
      type (rtwrs_pmn), pointer :: wtwtk
      integer, dimension(:,:), pointer :: array
      type (io_pokc), pointer :: iopkoj 
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(2) :: dimNames
      integer, dimension(2) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg2DInteger), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg2DInteger
   type fgfgfgg1DInteger
      type (rtwrs_pmn), pointer :: wtwtk
      integer, dimension(:), pointer :: array
      type (io_pokc), pointer :: iopkoj  
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(1) :: dimNames
      integer, dimension(1) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg1DInteger), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg1DInteger
   type fgfgfgg0DInteger
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: scalar
      type (io_pokc), pointer :: iopkoj
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg0DInteger), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
   end type fgfgfgg0DInteger
   type fgfgfgg1DChar
      type (rtwrs_pmn), pointer :: wtwtk
      character (len=1), dimension(:), pointer :: array
      type (io_pokc), pointer :: iopkoj 
      integer, dimension(1) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg1DChar), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg1DChar
   type fgfgfgg0DChar
      type (rtwrs_pmn), pointer :: wtwtk
      character (len=1) :: scalar
      type (io_pokc), pointer :: iopkoj       
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg0DChar), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
   end type fgfgfgg0DChar
   type pppsx_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: nCells
      integer, dimension(:), pointer :: nVerticesArray
      type (fgfgfgg2dbvbvbb), pointer :: m_hybi
   end type pppsx_pmn
   type hyzzl_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: index_qv = 1
      type (fgfgfgg0dChar), pointer :: xtime
      type (fgfgfgg2dbvbvbb), pointer :: u
   end type hyzzl_pmn
   type hyzzl_pointer_pmn
      type (hyzzl_pmn), pointer :: kxxq
   end type hyzzl_pointer_pmn
   type hyzzl_multilevel_pmn
      integer :: nTimeLevels
      type (hyzzl_pointer_pmn), dimension(:), pointer :: time_levs
   end type hyzzl_multilevel_pmn
   type tqxsgg_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      type (fgfgfgg1dbvbvbb), pointer :: cofrz
      type (fgfgfgg1dbvbvbb), pointer :: uyuuu_tytys
   end type tqxsgg_pmn
   type ytwq_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: index_qv = 1
      integer :: num_sstyss = 8
      type (fgfgfgg2dbvbvbb), pointer :: u
   end type ytwq_pmn
   type tqxsgg_yxvb_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      type (fgfgfgg1dbvbvbb), pointer :: nsteps_accum
   end type tqxsgg_yxvb_pmn
   type ytwq_yxvb_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      type (fgfgfgg2dbvbvbb), pointer :: rthcuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rqvcuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rqccuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rqicuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rqrcuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rqscuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rqvdynten
      type (fgfgfgg2dbvbvbb), pointer :: rucuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rvcuuuxx
      type (fgfgfgg2dbvbvbb), pointer :: rubleeezg
      type (fgfgfgg2dbvbvbb), pointer :: rvbleeezg
      type (fgfgfgg2dbvbvbb), pointer :: rthbleeezg
      type (fgfgfgg2dbvbvbb), pointer :: rqvbleeezg
      type (fgfgfgg2dbvbvbb), pointer :: rqcbleeezg
      type (fgfgfgg2dbvbvbb), pointer :: rqibleeezg
      type (fgfgfgg2dbvbvbb), pointer :: rthratenghgxxx
      type (fgfgfgg2dbvbvbb), pointer :: rthratenlw
   end type ytwq_yxvb_pmn
   type vvv_eped
      type (rtwrs_pmn), pointer :: wtwtk
      type (fgfgfgg1dInteger), pointer :: isltyp
      type (fgfgfgg1dInteger), pointer :: ivgtyp
      type (fgfgfgg1dInteger), pointer :: landmask
      type (fgfgfgg1dbvbvbb), pointer :: shdmin
      type (fgfgfgg1dbvbvbb), pointer :: shdmax
      type (fgfgfgg1dbvbvbb), pointer :: snoalb
      type (fgfgfgg1dbvbvbb), pointer :: ter
      type (fgfgfgg2dbvbvbb), pointer :: albedo12m
      type (fgfgfgg2dbvbvbb), pointer :: greenfrac
      type (fgfgfgg1dbvbvbb), pointer :: vvv_albbck
      type (fgfgfgg1dbvbvbb), pointer :: skinpomnk
      type (fgfgfgg1dbvbvbb), pointer :: snow
      type (fgfgfgg1dbvbvbb), pointer :: snowc
      type (fgfgfgg1dbvbvbb), pointer :: snowh
      type (fgfgfgg1dbvbvbb), pointer :: kjkjhs
      type (fgfgfgg1dbvbvbb), pointer :: tmn
      type (fgfgfgg1dbvbvbb), pointer :: vegfra
      type (fgfgfgg1dbvbvbb), pointer :: seaice
      type (fgfgfgg1dbvbvbb), pointer :: xice
      type (fgfgfgg1dbvbvbb), pointer :: xland
      type (fgfgfgg2dbvbvbb), pointer :: dzs
      type (fgfgfgg2dbvbvbb), pointer :: smcrel
      type (fgfgfgg2dbvbvbb), pointer :: sh2o
      type (fgfgfgg2dbvbvbb), pointer :: xxyutx
      type (fgfgfgg2dbvbvbb), pointer :: tslb
   end type vvv_eped
   type parallel_pokc
      type (rtyw_fdqut_rpmn_wcvg), pointer :: htywhgbvnmc
      type (rtyw_fdqut_rpmn_wcvg), pointer :: htywhgwqwqee
      type (rtyw_fdqut_rpmn_wcvg), pointer :: htywhgxsxsx
      type (rtyw_fdqut_rpmn_wcvg), pointer :: kpqwhgbvnmc
      type (rtyw_fdqut_rpmn_wcvg), pointer :: kpqwhgwqwqee
      type (rtyw_fdqut_rpmn_wcvg), pointer :: kpqwhgxsxsx
      type (rtyw_fdqut_rpmn_wcvg), pointer :: rqpodhgbvnmc
      type (rtyw_fdqut_rpmn_wcvg), pointer :: rqpodhgwqwqee
      type (rtyw_fdqut_rpmn_wcvg), pointer :: rqpodhgxsxsx
   end type parallel_pokc
   type rtwrs_pmn
      type (hyzzl_multilevel_pmn), pointer :: kxxq
      type (hyzzl_pmn), pointer :: kjhkjhg
      type (pppsx_pmn), pointer :: pppsx
      type (tqxsgg_pmn), pointer :: tqxsgg
      type (ytwq_pmn), pointer :: ytwq
      type (tqxsgg_yxvb_pmn), pointer :: tqxsgg_yxvb
      type (ytwq_yxvb_pmn), pointer :: ytwq_yxvb
      type (vvv_eped), pointer :: vvv_zas
      integer :: wtwtkzx   
      integer :: localyzwzzzx  
      type (dodod_pmn), pointer :: dodod
      type (parallel_pokc), pointer :: parpkoj
      type (rtwrs_pmn), pointer :: kkkss, klsjhj
   end type rtwrs_pmn
   type dodod_pmn
      type (rtwrs_pmn), pointer :: jkhsd
      type (dm_pokc), pointer :: dmpkoj
   end type dodod_pmn
   contains
   subroutine rtyw_popoxx_dodod(dom, dmpkoj)
      implicit none
      type (dodod_pmn), pointer :: dom
      type (dm_pokc), pointer :: dmpkoj
   end subroutine rtyw_popoxx_dodod
   subroutine rtyw_fjkg_hyzzl(kxxq)
      implicit none
      type (hyzzl_pmn), intent(inout) :: kxxq
   end subroutine rtyw_fjkg_hyzzl
   subroutine rtyw_fjkg_pppsx(pppsx)
      implicit none
      type (pppsx_pmn), intent(inout) :: pppsx
   end subroutine rtyw_fjkg_pppsx
   subroutine rtyw_fjkg_tqxsgg(tqxsgg)
      implicit none
      type (tqxsgg_pmn), intent(inout) :: tqxsgg
      deallocate(tqxsgg % uyuuu_tytys)
   end subroutine rtyw_fjkg_tqxsgg
   subroutine rtyw_fjkg_ytwq(ytwq)
      implicit none
      type (ytwq_pmn), intent(inout) :: ytwq
   end subroutine rtyw_fjkg_ytwq
   subroutine rtyw_fjkg_tqxsgg_yxvb(tqxsgg_yxvb)
      implicit none
      type (tqxsgg_yxvb_pmn), intent(inout) :: tqxsgg_yxvb
   end subroutine rtyw_fjkg_tqxsgg_yxvb
   subroutine rtyw_fjkg_ytwq_yxvb(ytwq_yxvb)
      implicit none
      type (ytwq_yxvb_pmn), intent(inout) :: ytwq_yxvb
   end subroutine rtyw_fjkg_ytwq_yxvb
   subroutine rtyw_fjkg_vvv_zas(vvv_zas)
      implicit none
      type (vvv_eped), intent(inout) :: vvv_zas
   end subroutine rtyw_fjkg_vvv_zas
      subroutine rtyw_wpol_tqxsgg_yxvb_www(tqxsgg_yxvb, kkkss, klsjhj)
         implicit none
         type (tqxsgg_yxvb_pmn), pointer :: tqxsgg_yxvb
         type (tqxsgg_yxvb_pmn), pointer, optional :: kkkss, klsjhj
      end subroutine rtyw_wpol_tqxsgg_yxvb_www
      subroutine rtyw_wpol_ytwq_yxvb_www(ytwq_yxvb, kkkss, klsjhj)
         implicit none
         type (ytwq_yxvb_pmn), pointer :: ytwq_yxvb
         type (ytwq_yxvb_pmn), pointer, optional :: kkkss, klsjhj
      end subroutine rtyw_wpol_ytwq_yxvb_www
      subroutine rtyw_wpol_vvv_zas_www(vvv_zas, kkkss, klsjhj)
         implicit none
         type (vvv_eped), pointer :: vvv_zas
         type (vvv_eped), pointer, optional :: kkkss, klsjhj
      end subroutine rtyw_wpol_vvv_zas_www
end module rtyw_gzgzgg_pmns
use rtyw_gzgzgg_pmns
print *,'pass'
end
