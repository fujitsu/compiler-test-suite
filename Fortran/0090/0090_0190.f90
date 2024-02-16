module sub
  integer(kind=4),parameter :: N=10,ANS=4
  integer(kind=1),dimension(1:N)  :: in_i11,in_i12,out_i1
  integer(kind=2),dimension(1:N)  :: in_i21,in_i22,out_i2
  integer(kind=4),dimension(1:N)  :: in_i41,in_i42,out_i4
  integer(kind=8),dimension(1:N)  :: in_i81,in_i82,out_i8
  real(kind=4),dimension(1:N)     :: in_r41,in_r42,out_r4
  real(kind=8),dimension(1:N)     :: in_r81,in_r82,out_r8
  real(kind=16),dimension(1:N)    :: in_r161,in_r162,out_r16
  complex(kind=4),dimension(1:N)  :: in_c81,in_c82,out_c8
  complex(kind=8),dimension(1:N)  :: in_c161,in_c162,out_c16
  complex(kind=16),dimension(1:N) :: in_c321,in_c322,out_c32
  logical ok
end module

program main
  use sub

  call init_data()

!!! TEST

! integer
  out_i1  =  in_i11(in_i12)
  out_i2  =  in_i21(in_i22)
  out_i4  =  in_i41(in_i42)
  out_i8  =  in_i81(in_i82)
! real
  out_r4  =  in_r41(int(in_r42))
  out_r8  =  in_r81(int(in_r82))
  out_r16 =  in_r161(int(in_r162))
! complex
  out_c8  =  in_c81(int(aimag(in_c82)))
  out_c16 =  in_c161(int(aimag(in_c162)))
  out_c32 =  in_c321(int(aimag(in_c322)))

!!! CHECK
  ok = .false.
  if (real(maxval(out_i1),kind=16) == real(maxval(out_i2),kind=16)) then
    if (real(maxval(out_i2),kind=16) == real(maxval(out_i4),kind=16)) then
      if (real(maxval(out_i4),kind=16) == real(maxval(out_i8),kind=16)) then
        if (real(maxval(out_i8),kind=16) == real(maxval(out_r4),kind=16)) then
          if (real(maxval(out_r4),kind=16) == real(maxval(out_r8),kind=16)) then
            if (real(maxval(out_r8),kind=16) == real(maxval(out_r16),kind=16)) then
              if (real(sum(out_c8),kind=16) == real(sum(out_c16),kind=16)) then
                if (real(sum(out_c16),kind=16) == real(sum(out_c32),kind=16)) then
                  if (real(aimag(sum(out_c32)),kind=16) == real(aimag(sum(out_c16)),kind=16)) then
                    if (real(aimag(sum(out_c16)),kind=16) == real(aimag(sum(out_c8)),kind=16)) then
                      ok = .true.
                    endif
                  endif
                endif
              endif
            endif
          endif
        endif
      endif
    endif
  endif

  if (ok) then
    print *,"OK"
  else
    print *,"NG : "
    print *,out_i1
    print *,out_i2
    print *,out_i4
    print *,out_i8
    print *,out_r4
    print *,out_r8
    print *,out_r16
    print *,out_c8
    print *,out_c16
    print *,out_c32
  endif
end program

subroutine init_data()
  use sub

  in_i11  = (/(mod(i,N/2),i=1,N)/)
  in_i12  = (/(N-i+1,i=1,N)/)
  in_i21  = in_i11
  in_i22  = in_i12
  in_i41  = in_i11
  in_i42  = in_i12
  in_i81  = in_i11
  in_i82  = in_i12
  in_r41  = real(in_i11)
  in_r42  = real(in_i12)
  in_r81  = real(in_i11,kind=8)
  in_r82  = real(in_i12,kind=8)
  in_r161 = real(in_i11,kind=16)
  in_r162 = real(in_i12,kind=16)
  in_c81  = cmplx(real(in_i11,kind=4),real(in_i11,kind=4))
  in_c82  = cmplx(real(in_i12,kind=4),real(in_i12,kind=4))
  in_c161 = cmplx(real(in_i11,kind=8),real(in_i11,kind=8))
  in_c162 = cmplx(real(in_i12,kind=8),real(in_i12,kind=8))
  in_c321 = cmplx(real(in_i11,kind=16),real(in_i11,kind=16))
  in_c322 = cmplx(real(in_i12,kind=16),real(in_i12,kind=16))
end subroutine

