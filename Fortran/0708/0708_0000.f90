 call s1
 print *,'pass'
 end
      MODULE BASE_MODULE

      integer (kind = 4), parameter :: ndim = 3

      integer (kind = 4), parameter :: nfc  = 6

      integer (kind = 4), parameter :: nvc  = 8

      integer (kind = 4), parameter :: nvf  = 4

         type RCELL_CNTR
            real (kind = 8) :: cntr
         end type RCELL_CNTR

         type ICELL_CNTR
            integer (kind = 4) :: cntr
         end type ICELL_CNTR

         INTERFACE OPERATOR (+)
            module procedure add_icell_cntr
         end interface
         INTERFACE OPERATOR (-)
            module procedure sub_icell_cntr
         end interface
         INTERFACE OPERATOR (*)
            module procedure mult_icell_cntr
         end interface
         INTERFACE OPERATOR (**)
            module procedure power_icell_cntr
         end interface
         INTERFACE OPERATOR (<)
            module procedure lt_icell_cntr
         end interface
         INTERFACE OPERATOR (<=)
            module procedure le_icell_cntr
         end interface
         INTERFACE OPERATOR (>)
            module procedure gt_icell_cntr
         end interface
         INTERFACE OPERATOR (>=)
            module procedure ge_icell_cntr
         end interface
         INTERFACE OPERATOR (==)
            module procedure eq_icell_cntr
         end interface
         INTERFACE OPERATOR (/=)
            module procedure ne_icell_cntr
         end interface

         type RVRTX_CNTR
            real (kind = 8) :: vrtx
         end type RVRTX_CNTR  

         type IVRTX_CNTR
            real (kind = 4) :: vrtx
         end type IVRTX_CNTR  

         type RFACE_CNTR
            real (kind = 8) :: face
         end type RFACE_CNTR

         type IFACE_CNTR
            real (kind = 4) :: face
         end type IFACE_CNTR

      CONTAINS

         FUNCTION ADD_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) Add_icell_cntr
            type (ICELL_CNTR) ,intent(in)::   Left, Right
            Add_icell_cntr%cntr = Left%cntr + Right%cntr
         end function add_icell_cntr
         FUNCTION SUB_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) Sub_icell_cntr
            type (ICELL_CNTR),intent(in)::    Left, Right
            Sub_icell_cntr%cntr = Left%cntr - Right%cntr
         end function sub_icell_cntr
         FUNCTION MULT_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) Mult_icell_cntr
            type (ICELL_CNTR),intent(in)::     Left, Right
            Mult_icell_cntr%cntr = Left%cntr*Right%cntr
         end function mult_icell_cntr
         FUNCTION POWER_ICELL_CNTR (Base, Exponent)
            type (ICELL_CNTR) ,intent(in):: Base
            type (ICELL_CNTR) ::Power_icell_cntr
            integer (kind = 4) ,intent(in)::Exponent
            Power_icell_cntr%cntr = Base%cntr**Exponent
         end function power_icell_cntr
         FUNCTION GT_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) ,intent(in)::Left, Right
            logical Gt_icell_cntr
            Gt_icell_cntr = Left%cntr > Right%cntr
         end function gt_icell_cntr
         FUNCTION GE_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) ,intent(in)::Left, Right
            logical Ge_icell_cntr
            Ge_icell_cntr = Left%cntr >= Right%cntr
         end function ge_icell_cntr
         FUNCTION LT_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) ,intent(in)::Left, Right
            logical Lt_icell_cntr
            Lt_icell_cntr = Left%cntr < Right%cntr
         end function lt_icell_cntr
         FUNCTION LE_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR) ,intent(in) ::Left, Right
            logical Le_icell_cntr
            Le_icell_cntr = Left%cntr <= Right%cntr
         end function le_icell_cntr
         FUNCTION EQ_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR),intent(in):: Left, Right
            logical Eq_icell_cntr
            Eq_icell_cntr = Left%cntr == Right%cntr
         end function eq_icell_cntr
         FUNCTION NE_ICELL_CNTR (Left, Right)
            type (ICELL_CNTR),intent(in):: Left, Right
            logical Ne_icell_cntr
            Ne_icell_cntr = Left%cntr /= Right%cntr
         end function ne_icell_cntr

      end module base_module
 subroutine s1
      use    BASE_MODULE
  end
