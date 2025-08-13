    real(kind=16) :: a2
    parameter (a2=-0.0e0_16)

    write(83,'(z32.32)') -0.0e0_16
    write(83,'(z32.32)') a2
    call chk
    print *,'pass'
  end
  subroutine chk
    character*32 c
    rewind 83
  read(83,'(a)') c
  if (c(1:2)/='80') print *,101,c
  read(83,'(a)') c
  if (c(1:2)/='80') print *,102,c
  end
