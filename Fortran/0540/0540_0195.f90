module pFIO_HistoryCollectionMod
  type :: HistoryCollection
  end type HistoryCollection
end module pFIO_HistoryCollectionMod

module pFIO_ServerThreadMod
   use pFIO_HistoryCollectionMod
   private
end module pFIO_ServerThreadMod

module MAPL_HistoryCollectionMod
  type :: HistoryCollection
    contains
      procedure :: AddGrid
  end type
  contains
    subroutine AddGrid(this)
      class(HistoryCollection) :: this
    end subroutine AddGrid
end module MAPL_HistoryCollectionMod

module MAPL_HistoryGridCompMod
  contains
    subroutine x (list)
  use PFIO_SERVERTHREADMOD
  use MAPL_HistoryCollectionMod
      type(HistoryCollection), pointer     :: list
      call list%AddGrid()
    end
    subroutine Initialize ()
  use PFIO_SERVERTHREADMOD
  use MAPL_HistoryCollectionMod
      type(HistoryCollection), pointer     :: list
      call list%AddGrid()
    end
end
  use PFIO_SERVERTHREADMOD
  use MAPL_HistoryCollectionMod
use    MAPL_HistoryGridCompMod
      type(HistoryCollection), pointer     :: list
allocate(list)
      call list%AddGrid()
print *,'pass'
end
