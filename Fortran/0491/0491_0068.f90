module mod

type:: CRTM_CloudCover_type
 logical::Is_Allocated
end type
contains

IMPURE ELEMENTAL SUBROUTINE Destroy( self )
     CLASS(CRTM_CloudCover_type), INTENT(OUT) :: self
     self%Is_Allocated = .FALSE.
END SUBROUTINE Destroy

end

print *,'pass'
end
