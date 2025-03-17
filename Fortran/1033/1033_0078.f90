PROGRAM MAIN
  IMPLICIT NONE
  INTEGER, PARAMETER:: wp = SELECTED_REAL_KIND(12)
  TYPE Vec_t
     REAL(wp), ALLOCATABLE:: v(:)
  END TYPE Vec_t
  TYPE(Vec_t), TARGET:: a, b
  TYPE(Vec_t), POINTER:: vp

  a = Vec(3)
  if (any(a%v/=(/0.0_wp,0.0_wp,0.0_wp/))) print *,'error 1'
  b = Vec(3)
  if (any(b%v/=(/0.0_wp,0.0_wp,0.0_wp/))) print *,'error 2'
  b%v = 2.0_wp
  if (any(b%v/=(/2.0_wp,2.0_wp,2.0_wp/))) print *,'error 3'
  a = b
  if (any(a%v/=(/2.0_wp,2.0_wp,2.0_wp/))) print *,'error 4'

  vp => a

  if (any(vp%v/=(/2.0_wp,2.0_wp,2.0_wp/))) print *,'error 5'
  if ( loc(a%v) /= loc(vp%v) ) print *,'error 6'

  b = VecPtr(a)
  if (any(b%v/=(/2.0_wp,2.0_wp,2.0_wp/))) print *,'error 7'

  vp => VecPtr(a)
  if (any(vp%v/=(/2.0_wp,2.0_wp,2.0_wp/))) print *,'error 8'
  if ( loc(a%v) /= loc(vp%v) ) print *,'error 9'

  print *,'pass'

CONTAINS

  FUNCTION Vec(n) RESULT ( f )
    INTEGER, INTENT(IN):: n
    TYPE(Vec_t):: f
    ALLOCATE( f%v(n) )
    f%v = 0.0_wp
  END FUNCTION Vec

  FUNCTION VecPtr(f) RESULT ( fp )
    TYPE(Vec_t), TARGET, INTENT(IN OUT):: f
    TYPE(Vec_t), POINTER:: fp
    fp => f
  END FUNCTION VecPtr

END PROGRAM MAIN
