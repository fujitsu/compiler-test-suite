      program main
      integer (kind = 4 ) ncells, nfc
      common /parameter/ ncells, nfc
      ncells = 10
      nfc    = 6
      call temp
      end
      subroutine temp
      integer (kind = 4 ) ncells, nfc
      common /parameter/ ncells, nfc
      real (kind = 8 ), dimension(nfc:ncells,ncells) :: Flux_vol
      real (kind = 8 )                        :: A
      Flux_vol = 0.0
      A = 2.
      return
      end
