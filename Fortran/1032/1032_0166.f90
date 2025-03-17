module BC_ATLASES_INTERNAL

  implicit none
  private

  public :: BC_Atlas_Data

  type BC_Atlas_Data
     integer, pointer, dimension(:)   :: Face
  end type BC_Atlas_Data

end module BC_ATLASES_INTERNAL

module BC_ATLASES_DATA_TYPES

  use bc_atlases_internal

  implicit none
  private

  public :: BC_Atlas_Data

end module BC_ATLASES_DATA_TYPES

module BC_ATLASES

  use bc_atlases_internal
  use bc_atlases_data_types, only: BC_Atlas_Data

end module BC_ATLASES

use    BC_ATLASES

print *,'pass'
END
