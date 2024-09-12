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
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
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
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg0DInteger
   type fgfgfgg1DChar
      type (rtwrs_pmn), pointer :: wtwtk
      character (len=1), dimension(:), pointer :: array
      type (io_pokc), pointer :: iopkoj 
      character (len=1) :: fgfgfggName
      character (len=1), dimension(:), pointer :: constituentNames => null()
      character (len=1), dimension(1) :: dimNames
      integer, dimension(1) :: dimSizes
      logical :: hasTimeDimension
      logical :: isSuperArray
      type (att_wcvg_pmn), pointer :: attwhwh => null()
      type (fgfgfgg1DChar), pointer :: kkkss, klsjhj
      type (rtyw_fdqut_rpmn_wcvg), pointer :: sendwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
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
      type (rtyw_fdqut_rpmn_wcvg), pointer :: recvwhwh
      type (rtyw_fdqut_rpmn_wcvg), pointer :: copywhwh
   end type fgfgfgg0DChar
   type pppsx_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: nCells
      integer :: nEdges
      integer :: maxEdges
      integer :: maxEdges2
      integer :: nVertices
      integer :: vertexDegree
      integer :: nVertLevels
      integer :: nMonths
      integer :: nSoilLevels
      integer :: nLags
      integer :: nOznLevels
      integer :: nAerLevels
      integer :: cam_dim1
      integer :: nCellsSolve
      integer, dimension(:), pointer :: nCellsArray
      integer :: nEdgesSolve
      integer, dimension(:), pointer :: nEdgesArray
      integer :: maxEdgesSolve
      integer, dimension(:), pointer :: maxEdgesArray
      integer :: maxEdges2Solve
      integer, dimension(:), pointer :: maxEdges2Array
      integer :: nVerticesSolve
      integer, dimension(:), pointer :: nVerticesArray
      integer :: vertexDegreeSolve
      integer, dimension(:), pointer :: vertexDegreeArray
      integer :: nVertLevelsSolve
      integer, dimension(:), pointer :: nVertLevelsArray
      integer :: nMonthsSolve
      integer :: nSoilLevelsSolve
      integer :: nLagsSolve
      integer :: nOznLevelsSolve
      integer :: nAerLevelsSolve
      integer :: cam_dim1Solve
      logical :: on_a_sphere
      real (kind=8) :: sphere_radius
      type (fgfgfgg1dbvbvbb), pointer :: latCell
      type (fgfgfgg1dbvbvbb), pointer :: lonCell
      type (fgfgfgg1dbvbvbb), pointer :: xCell
      type (fgfgfgg1dbvbvbb), pointer :: yCell
      type (fgfgfgg1dbvbvbb), pointer :: zCell
      type (fgfgfgg1dInteger), pointer :: indexhgCellzx
      type (fgfgfgg1dbvbvbb), pointer :: latEdge
      type (fgfgfgg1dbvbvbb), pointer :: lonEdge
      type (fgfgfgg1dbvbvbb), pointer :: xEdge
      type (fgfgfgg1dbvbvbb), pointer :: yEdge
      type (fgfgfgg1dbvbvbb), pointer :: zEdge
      type (fgfgfgg1dInteger), pointer :: indexhgEdgezx
      type (fgfgfgg1dbvbvbb), pointer :: latVertex
      type (fgfgfgg1dbvbvbb), pointer :: lonVertex
      type (fgfgfgg1dbvbvbb), pointer :: xVertex
      type (fgfgfgg1dbvbvbb), pointer :: yVertex
      type (fgfgfgg1dbvbvbb), pointer :: zVertex
      type (fgfgfgg1dInteger), pointer :: indexhgVertexzx
      type (fgfgfgg2dInteger), pointer :: htywOnEdge
      type (fgfgfgg1dInteger), pointer :: nEdgesOnCell
      type (fgfgfgg1dInteger), pointer :: nEdgesOnEdge
      type (fgfgfgg2dInteger), pointer :: kpqwOnCell
      type (fgfgfgg2dInteger), pointer :: kpqwOnEdge
      type (fgfgfgg2dbvbvbb), pointer :: weightsOnEdge
      type (fgfgfgg1dbvbvbb), pointer :: dvEdge
      type (fgfgfgg1dbvbvbb), pointer :: dcEdge
      type (fgfgfgg1dbvbvbb), pointer :: angleEdge
      type (fgfgfgg1dbvbvbb), pointer :: areaCell
      type (fgfgfgg1dbvbvbb), pointer :: areaTriangle
      type (fgfgfgg2dbvbvbb), pointer :: edgeNormalVectors
      type (fgfgfgg2dbvbvbb), pointer :: localVerticalUnitVectors
      type (fgfgfgg3dbvbvbb), pointer :: cellTangentPlane
      type (fgfgfgg2dInteger), pointer :: htywOnCell
      type (fgfgfgg2dInteger), pointer :: rqpodOnCell
      type (fgfgfgg2dInteger), pointer :: rqpodOnEdge
      type (fgfgfgg2dInteger), pointer :: kpqwOnVertex
      type (fgfgfgg2dInteger), pointer :: htywOnVertex
      type (fgfgfgg2dbvbvbb), pointer :: kiteAreasOnVertex
      type (fgfgfgg1dbvbvbb), pointer :: fEdge
      type (fgfgfgg1dbvbvbb), pointer :: fVertex
      type (fgfgfgg1dbvbvbb), pointer :: pppsxDensity
      type (fgfgfgg1dbvbvbb), pointer :: pppsxScalingDel2
      type (fgfgfgg1dbvbvbb), pointer :: pppsxScalingDel4
      type (fgfgfgg0dbvbvbb), pointer :: cf1
      type (fgfgfgg0dbvbvbb), pointer :: cf2
      type (fgfgfgg0dbvbvbb), pointer :: cf3
      type (fgfgfgg2dbvbvbb), pointer :: cpr
      type (fgfgfgg2dbvbvbb), pointer :: cpl
      type (fgfgfgg2dbvbvbb), pointer :: hx
      type (fgfgfgg2dbvbvbb), pointer :: zgzgzgg
      type (fgfgfgg1dbvbvbb), pointer :: rdzw
      type (fgfgfgg1dbvbvbb), pointer :: dzu
      type (fgfgfgg1dbvbvbb), pointer :: rdzu
      type (fgfgfgg1dbvbvbb), pointer :: fzm
      type (fgfgfgg1dbvbvbb), pointer :: fzp
      type (fgfgfgg2dbvbvbb), pointer :: zx
      type (fgfgfgg2dbvbvbb), pointer :: zz
      type (fgfgfgg3dbvbvbb), pointer :: zb
      type (fgfgfgg3dbvbvbb), pointer :: zb3
      type (fgfgfgg2dbvbvbb), pointer :: pzm
      type (fgfgfgg2dbvbvbb), pointer :: pzp
      type (fgfgfgg2dbvbvbb), pointer :: dss
      type (fgfgfgg1dbvbvbb), pointer :: u_init
      type (fgfgfgg2dbvbvbb), pointer :: t_init
      type (fgfgfgg1dbvbvbb), pointer :: qv_init
      type (fgfgfgg3dbvbvbb), pointer :: deriv_two
      type (fgfgfgg2dInteger), pointer :: advCells
      type (fgfgfgg2dbvbvbb), pointer :: adv_coefs
      type (fgfgfgg2dbvbvbb), pointer :: adv_coefs_3rd
      type (fgfgfgg2dInteger), pointer :: advCellsForEdge
      type (fgfgfgg1dInteger), pointer :: nAdvCellsForEdge
      type (fgfgfgg2dbvbvbb), pointer :: defc_a
      type (fgfgfgg2dbvbvbb), pointer :: defc_b
      type (fgfgfgg3dbvbvbb), pointer :: coeffs_reconstruct
      type (fgfgfgg2dbvbvbb), pointer :: east
      type (fgfgfgg2dbvbvbb), pointer :: north
      type (fgfgfgg2dbvbvbb), pointer :: pin
      type (fgfgfgg3dbvbvbb), pointer :: ozmixm
      type (fgfgfgg2dbvbvbb), pointer :: m_hybi
   end type pppsx_pmn
   type hyzzl_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: index_qv = 1
      integer :: index_qc = 2
      integer :: index_qr = 3
      integer :: index_qi = 4
      integer :: index_qs = 5
      integer :: index_qg = 6
      integer :: index_qnr = 7
      integer :: index_qni = 8
      integer :: index_sul = 1
      integer :: index_sslt = 2
      integer :: index_dust1 = 3
      integer :: index_dust2 = 4
      integer :: index_dust3 = 5
      integer :: index_dust4 = 6
      integer :: index_ocpho = 7
      integer :: index_bcpho = 8
      integer :: index_ocphi = 9
      integer :: index_bcphi = 10
      integer :: index_bg = 11
      integer :: index_volc = 12
      integer :: moist_hgkkk = 1
      integer :: moist_rtrtx = 6
      integer :: number_hgkkk = 7
      integer :: number_rtrtx = 8
      integer :: num_sstyss = 8
      integer :: aer_cam_hgkkk = 1
      integer :: aer_cam_rtrtx = 12
      integer :: num_aerosols = 12
      type (fgfgfgg0dChar), pointer :: xtime
      type (fgfgfgg2dbvbvbb), pointer :: u
      type (fgfgfgg2dbvbvbb), pointer :: w
      type (fgfgfgg2dbvbvbb), pointer :: rho_zz
      type (fgfgfgg2dbvbvbb), pointer :: theta_m
      type (fgfgfgg1dbvbvbb), pointer :: m_ps
      type (fgfgfgg3dbvbvbb), pointer :: sstyss
      type (fgfgfgg3dbvbvbb), pointer :: aerosols
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
      type (fgfgfgg2dbvbvbb), pointer :: cofwr
      type (fgfgfgg2dbvbvbb), pointer :: cofwz
      type (fgfgfgg2dbvbvbb), pointer :: coftz
      type (fgfgfgg2dbvbvbb), pointer :: cofwt
      type (fgfgfgg2dbvbvbb), pointer :: a_tri
      type (fgfgfgg2dbvbvbb), pointer :: alpha_tri
      type (fgfgfgg2dbvbvbb), pointer :: gamma_tri
      type (fgfgfgg2dbvbvbb), pointer :: pressure_p
      type (fgfgfgg2dbvbvbb), pointer :: rho
      type (fgfgfgg2dbvbvbb), pointer :: theta
      type (fgfgfgg2dbvbvbb), pointer :: rh
      type (fgfgfgg2dbvbvbb), pointer :: v
      type (fgfgfgg2dbvbvbb), pointer :: divergence
      type (fgfgfgg2dbvbvbb), pointer :: uyuuu
      type (fgfgfgg2dbvbvbb), pointer :: pv_edge
      type (fgfgfgg2dbvbvbb), pointer :: rho_edge
      type (fgfgfgg2dbvbvbb), pointer :: ke
      type (fgfgfgg2dbvbvbb), pointer :: pv_vertex
      type (fgfgfgg2dbvbvbb), pointer :: pv_cell
      type (fgfgfgg2dbvbvbb), pointer :: uReconstructX
      type (fgfgfgg2dbvbvbb), pointer :: uReconstructY
      type (fgfgfgg2dbvbvbb), pointer :: uReconstructZ
      type (fgfgfgg2dbvbvbb), pointer :: uReconstructZonal
      type (fgfgfgg2dbvbvbb), pointer :: uReconstructMeridional
      type (fgfgfgg2dbvbvbb), pointer :: rv
      type (fgfgfgg2dbvbvbb), pointer :: circulation
      type (fgfgfgg2dbvbvbb), pointer :: gradPVt
      type (fgfgfgg2dbvbvbb), pointer :: gradPVn
      type (fgfgfgg2dbvbvbb), pointer :: h_divergence
      type (fgfgfgg2dbvbvbb), pointer :: exner
      type (fgfgfgg2dbvbvbb), pointer :: exner_base
      type (fgfgfgg2dbvbvbb), pointer :: rtheta_base
      type (fgfgfgg2dbvbvbb), pointer :: pressure_base
      type (fgfgfgg2dbvbvbb), pointer :: rho_base
      type (fgfgfgg2dbvbvbb), pointer :: theta_base
      type (fgfgfgg2dbvbvbb), pointer :: ruAvg
      type (fgfgfgg2dbvbvbb), pointer :: wwAvg
      type (fgfgfgg2dbvbvbb), pointer :: cqu
      type (fgfgfgg2dbvbvbb), pointer :: cqw
      type (fgfgfgg2dbvbvbb), pointer :: ru
      type (fgfgfgg2dbvbvbb), pointer :: ru_p
      type (fgfgfgg2dbvbvbb), pointer :: ru_save
      type (fgfgfgg2dbvbvbb), pointer :: rw
      type (fgfgfgg2dbvbvbb), pointer :: rw_p
      type (fgfgfgg2dbvbvbb), pointer :: rw_save
      type (fgfgfgg2dbvbvbb), pointer :: rtheta_p
      type (fgfgfgg2dbvbvbb), pointer :: rtheta_pp
      type (fgfgfgg2dbvbvbb), pointer :: rtheta_p_save
      type (fgfgfgg2dbvbvbb), pointer :: rtheta_pp_old
      type (fgfgfgg2dbvbvbb), pointer :: rho_p
      type (fgfgfgg2dbvbvbb), pointer :: rho_pp
      type (fgfgfgg2dbvbvbb), pointer :: rho_p_save
      type (fgfgfgg2dbvbvbb), pointer :: kdiff
      type (fgfgfgg1dbvbvbb), pointer :: surface_pressure
      type (fgfgfgg1dbvbvbb), pointer :: pomnkerature_200hPa
      type (fgfgfgg1dbvbvbb), pointer :: pomnkerature_500hPa
      type (fgfgfgg1dbvbvbb), pointer :: pomnkerature_tytys
      type (fgfgfgg1dbvbvbb), pointer :: height_200hPa
      type (fgfgfgg1dbvbvbb), pointer :: height_500hPa
      type (fgfgfgg1dbvbvbb), pointer :: height_tytys
      type (fgfgfgg1dbvbvbb), pointer :: uzonal_200hPa
      type (fgfgfgg1dbvbvbb), pointer :: uzonal_500hPa
      type (fgfgfgg1dbvbvbb), pointer :: uzonal_tytys
      type (fgfgfgg1dbvbvbb), pointer :: umeridional_200hPa
      type (fgfgfgg1dbvbvbb), pointer :: umeridional_500hPa
      type (fgfgfgg1dbvbvbb), pointer :: umeridional_tytys
      type (fgfgfgg1dbvbvbb), pointer :: w_200hPa
      type (fgfgfgg1dbvbvbb), pointer :: w_500hPa
      type (fgfgfgg1dbvbvbb), pointer :: w_tytys
      type (fgfgfgg1dbvbvbb), pointer :: uyuuu_200hPa
      type (fgfgfgg1dbvbvbb), pointer :: uyuuu_500hPa
      type (fgfgfgg1dbvbvbb), pointer :: uyuuu_tytys
   end type tqxsgg_pmn
   type ytwq_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      integer :: index_qv = 1
      integer :: index_qc = 2
      integer :: index_qr = 3
      integer :: index_qi = 4
      integer :: index_qs = 5
      integer :: index_qg = 6
      integer :: index_qnr = 7
      integer :: index_qni = 8
      integer :: moist_hgkkk = 1
      integer :: moist_rtrtx = 6
      integer :: number_hgkkk = 7
      integer :: number_rtrtx = 8
      integer :: num_sstyss = 8
      type (fgfgfgg2dbvbvbb), pointer :: u
      type (fgfgfgg2dbvbvbb), pointer :: w
      type (fgfgfgg2dbvbvbb), pointer :: rho_zz
      type (fgfgfgg2dbvbvbb), pointer :: theta_m
      type (fgfgfgg2dbvbvbb), pointer :: theta_euler
      type (fgfgfgg2dbvbvbb), pointer :: w_euler
      type (fgfgfgg2dbvbvbb), pointer :: u_euler
      type (fgfgfgg2dbvbvbb), pointer :: rt_ddfffgg_ytwq
      type (fgfgfgg3dbvbvbb), pointer :: sstyss
   end type ytwq_pmn
   type tqxsgg_yxvb_pmn
      type (rtwrs_pmn), pointer :: wtwtk
      type (fgfgfgg1dbvbvbb), pointer :: nsteps_accum
      type (fgfgfgg1dbvbvbb), pointer :: ndays_accum
      type (fgfgfgg2dbvbvbb), pointer :: tlag
      type (fgfgfgg1dbvbvbb), pointer :: tday_accum
      type (fgfgfgg1dbvbvbb), pointer :: tyear_mean
      type (fgfgfgg1dbvbvbb), pointer :: tyear_accum
      type (fgfgfgg1dbvbvbb), pointer :: refl10cm_max
      type (fgfgfgg1dInteger), pointer :: i_rrttzznc
      type (fgfgfgg1dbvbvbb), pointer :: sr
      type (fgfgfgg1dbvbvbb), pointer :: rrttzzncv
      type (fgfgfgg1dbvbvbb), pointer :: snowncv
      type (fgfgfgg1dbvbvbb), pointer :: graupelncv
      type (fgfgfgg1dbvbvbb), pointer :: rrttzznc
      type (fgfgfgg1dbvbvbb), pointer :: snownc
      type (fgfgfgg1dbvbvbb), pointer :: graupelnc
      type (fgfgfgg1dbvbvbb), pointer :: precipw
      type (fgfgfgg2dbvbvbb), pointer :: qsat
      type (fgfgfgg2dbvbvbb), pointer :: relhum
      type (fgfgfgg1dInteger), pointer :: i_rrttzzc
      type (fgfgfgg1dbvbvbb), pointer :: cuprec
      type (fgfgfgg1dbvbvbb), pointer :: rrttzzc
      type (fgfgfgg1dbvbvbb), pointer :: rrttzzcv
      type (fgfgfgg1dbvbvbb), pointer :: nca
      type (fgfgfgg1dbvbvbb), pointer :: cubot
      type (fgfgfgg1dbvbvbb), pointer :: cutop
      type (fgfgfgg2dbvbvbb), pointer :: w0avg
      type (fgfgfgg1dInteger), pointer :: kpbl
      type (fgfgfgg1dbvbvbb), pointer :: hpbl
      type (fgfgfgg2dbvbvbb), pointer :: exch_h
      type (fgfgfgg2dbvbvbb), pointer :: kzh
      type (fgfgfgg2dbvbvbb), pointer :: kzm
      type (fgfgfgg2dbvbvbb), pointer :: kzq
      type (fgfgfgg1dbvbvbb), pointer :: hfx
      type (fgfgfgg1dbvbvbb), pointer :: mavail
      type (fgfgfgg1dbvbvbb), pointer :: mol
      type (fgfgfgg1dbvbvbb), pointer :: qfx
      type (fgfgfgg1dbvbvbb), pointer :: qsfc
      type (fgfgfgg1dbvbvbb), pointer :: ust
      type (fgfgfgg1dbvbvbb), pointer :: ustm
      type (fgfgfgg1dbvbvbb), pointer :: zol
      type (fgfgfgg1dbvbvbb), pointer :: znt
      type (fgfgfgg1dbvbvbb), pointer :: br
      type (fgfgfgg1dbvbvbb), pointer :: cd
      type (fgfgfgg1dbvbvbb), pointer :: cda
      type (fgfgfgg1dbvbvbb), pointer :: chs
      type (fgfgfgg1dbvbvbb), pointer :: chs2
      type (fgfgfgg1dbvbvbb), pointer :: cqs2
      type (fgfgfgg1dbvbvbb), pointer :: ck
      type (fgfgfgg1dbvbvbb), pointer :: cka
      type (fgfgfgg1dbvbvbb), pointer :: cpm
      type (fgfgfgg1dbvbvbb), pointer :: flhc
      type (fgfgfgg1dbvbvbb), pointer :: flqc
      type (fgfgfgg1dbvbvbb), pointer :: gz1oz0
      type (fgfgfgg1dbvbvbb), pointer :: lh
      type (fgfgfgg1dbvbvbb), pointer :: psim
      type (fgfgfgg1dbvbvbb), pointer :: psih
      type (fgfgfgg1dbvbvbb), pointer :: qgh
      type (fgfgfgg1dbvbvbb), pointer :: regime
      type (fgfgfgg1dbvbvbb), pointer :: rmol
      type (fgfgfgg1dbvbvbb), pointer :: wspd
      type (fgfgfgg1dbvbvbb), pointer :: u10
      type (fgfgfgg1dbvbvbb), pointer :: v10
      type (fgfgfgg1dbvbvbb), pointer :: q2
      type (fgfgfgg1dbvbvbb), pointer :: t2m
      type (fgfgfgg1dbvbvbb), pointer :: th2m
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxdnb
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxdnbc
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxdnt
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxdntc
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxupb
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxupbc
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxupt
      type (fgfgfgg1dInteger), pointer :: i_acghgxxxuptc
      type (fgfgfgg1dbvbvbb), pointer :: coszr
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxcf
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxdnb
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxdnbc
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxdnt
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxdntc
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxupb
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxupbc
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxupt
      type (fgfgfgg1dbvbvbb), pointer :: ghgxxxuptc
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxdnb
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxdnbc
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxdnt
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxdntc
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxupb
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxupbc
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxupt
      type (fgfgfgg1dbvbvbb), pointer :: acghgxxxuptc
      type (fgfgfgg1dbvbvbb), pointer :: gghgxxx
      type (fgfgfgg2dbvbvbb), pointer :: ghgxxxdnflx
      type (fgfgfgg2dbvbvbb), pointer :: ghgxxxdnflxc
      type (fgfgfgg2dbvbvbb), pointer :: ghgxxxupflx
      type (fgfgfgg2dbvbvbb), pointer :: ghgxxxupflxc
      type (fgfgfgg1dInteger), pointer :: i_aclwdnb
      type (fgfgfgg1dInteger), pointer :: i_aclwdnbc
      type (fgfgfgg1dInteger), pointer :: i_aclwdnt
      type (fgfgfgg1dInteger), pointer :: i_aclwdntc
      type (fgfgfgg1dInteger), pointer :: i_aclwupb
      type (fgfgfgg1dInteger), pointer :: i_aclwupbc
      type (fgfgfgg1dInteger), pointer :: i_aclwupt
      type (fgfgfgg1dInteger), pointer :: i_aclwuptc
      type (fgfgfgg1dbvbvbb), pointer :: lwcf
      type (fgfgfgg1dbvbvbb), pointer :: lwdnb
      type (fgfgfgg1dbvbvbb), pointer :: lwdnbc
      type (fgfgfgg1dbvbvbb), pointer :: lwdnt
      type (fgfgfgg1dbvbvbb), pointer :: lwdntc
      type (fgfgfgg1dbvbvbb), pointer :: lwupb
      type (fgfgfgg1dbvbvbb), pointer :: lwupbc
      type (fgfgfgg1dbvbvbb), pointer :: lwupt
      type (fgfgfgg1dbvbvbb), pointer :: lwuptc
      type (fgfgfgg1dbvbvbb), pointer :: aclwdnb
      type (fgfgfgg1dbvbvbb), pointer :: aclwdnbc
      type (fgfgfgg1dbvbvbb), pointer :: aclwdnt
      type (fgfgfgg1dbvbvbb), pointer :: aclwdntc
      type (fgfgfgg1dbvbvbb), pointer :: aclwupb
      type (fgfgfgg1dbvbvbb), pointer :: aclwupbc
      type (fgfgfgg1dbvbvbb), pointer :: aclwupt
      type (fgfgfgg1dbvbvbb), pointer :: aclwuptc
      type (fgfgfgg1dbvbvbb), pointer :: olrtoa
      type (fgfgfgg1dbvbvbb), pointer :: glw
      type (fgfgfgg3dbvbvbb), pointer :: absnxt
      type (fgfgfgg3dbvbvbb), pointer :: abshghgx
      type (fgfgfgg2dbvbvbb), pointer :: emshghgx
      type (fgfgfgg2dbvbvbb), pointer :: cldfrac
      type (fgfgfgg1dbvbvbb), pointer :: acsnom
      type (fgfgfgg1dbvbvbb), pointer :: acsnow
      type (fgfgfgg1dbvbvbb), pointer :: canwat
      type (fgfgfgg1dbvbvbb), pointer :: chklowq
      type (fgfgfgg1dbvbvbb), pointer :: grdflx
      type (fgfgfgg1dbvbvbb), pointer :: lai
      type (fgfgfgg1dbvbvbb), pointer :: noahres
      type (fgfgfgg1dbvbvbb), pointer :: potevp
      type (fgfgfgg1dbvbvbb), pointer :: qz0
      type (fgfgfgg1dbvbvbb), pointer :: vvv_albedo
      type (fgfgfgg1dbvbvbb), pointer :: vvv_emiss
      type (fgfgfgg1dbvbvbb), pointer :: vvv_emibck
      type (fgfgfgg1dbvbvbb), pointer :: sfcrunoff
      type (fgfgfgg1dbvbvbb), pointer :: smstav
      type (fgfgfgg1dbvbvbb), pointer :: smshghgx
      type (fgfgfgg1dbvbvbb), pointer :: snopcx
      type (fgfgfgg1dbvbvbb), pointer :: snotime
      type (fgfgfgg1dbvbvbb), pointer :: kjkjhssk
      type (fgfgfgg1dbvbvbb), pointer :: kjkjhssk_diur
      type (fgfgfgg1dbvbvbb), pointer :: thc
      type (fgfgfgg1dbvbvbb), pointer :: udrunoff
      type (fgfgfgg1dbvbvbb), pointer :: xicem
      type (fgfgfgg1dbvbvbb), pointer :: z0
      type (fgfgfgg1dbvbvbb), pointer :: zs
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
