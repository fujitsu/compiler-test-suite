#define sizeof(X) size(transfer(X, (/1_ik1/)))
subroutine s(k)
  integer, parameter :: ik1 = selected_int_kind(2)

  type i01
     integer :: n1
     integer :: n2
     integer :: n3
     character :: char
  end type 
  type(i01) :: v01,v11(2),v21(k)
  type(i01),pointer :: v31(:)
  type(i01),target:: t31(3)

  type i02
     integer :: n1
     integer,pointer :: n2
     integer :: n3
     character :: char
  end type 
  type(i02) :: v02,v12(2),v22(k)
  type(i02),pointer :: v32(:)
  type(i02),target :: t32(3)

  type i03
     integer :: n1
     integer :: n2
     integer :: n3
     character :: char
     type (i01):: t1
  end type 
  type(i03) :: v03,v13(2),v23(k)
  type(i03),pointer :: v33(:)
  type(i03),target :: t33(3)
if (selected_int_kind(2)/=1)print *,'error-2'

  if (sizeof(v01)/=16)print *,'error-01'

  if (sizeof(v02)/=32)print *,'error-02'

  if (sizeof(v03)/=32)print *,'error-03'

  if (sizeof(v11)/=16*2)print *,'error-11'
  if (sizeof(v12)/=32*2)print *,'error-12'
  if (sizeof(v13)/=32*2)print *,'error-13'

  if (sizeof(v21)/=16*2)print *,'error-21'
  if (sizeof(v22)/=32*2)print *,'error-22'
  if (sizeof(v23)/=32*2)print *,'error-23'

allocate(v31(2),v32(2),v33(2))
  if (sizeof(v31)/=16*2)print *,'error-31'
  if (sizeof(v32)/=32*2)print *,'error-32'
  if (sizeof(v33)/=32*2)print *,'error-33'

v31=>t31(1:3:2)
v32=>t32(1:3:2)
v33=>t33(1:3:2)
  if (sizeof(v31)/=16*2)print *,'error-41'
  if (sizeof(v32)/=32*2)print *,'error-42'
  if (sizeof(v33)/=32*2)print *,'error-43'
end
call s(2)
print *,'pass'

  end
