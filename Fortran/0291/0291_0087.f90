   program main
     complex(kind=4)  c8(10)
     complex(kind=8)  c16(10)
     complex(kind=16) c32(10)

  do i=1,10,2
    c8(i)  = cmplx( 2,3 )
    c16(i) = cmplx( 2,3 )
    c32(i) = cmplx( 2,3 )
    c8(i+1)  = cmplx( 2,3 )
    c16(i+1) = cmplx( 2,3 )
    c32(i+1) = cmplx( 2,3 )
  end do

  if( c8(1) .eq. (2,3) ) then ; if( c16(1) .eq. (2,3) ) then ; ; else ; print *,' ERROR(1) ' ; endif ; else ; print *,' ERROR(2) '; end if
!
  c8(1)   = cmplx( 3,4 ) 
  c16(5)  = cmplx( 3,4 ) 
  c32(10) = cmplx( 3,4 ) 
!
  call sub(c8,c16,c32)
!
  print *,' PASS '
  contains
    recursive subroutine sub(c8,c16,c32)
      complex(kind=4)  c8(10)
      complex(kind=8)  c16(10)
      complex(kind=16) c32(10),s

      if( sum(c8,mask=c8.eq.(3,4)) .eq. (3,4) ) then
      else
        print *,' ERROR(3) '
      endif
      if( sum(c16,mask=c16.ne.(3,4)) .eq. (2,3)*9)  then
      else
        print *,' ERROR(4) '
      endif
      s=0

      do i=1,10
        s=s+c32(i)
      end do
      if( sum(c32) .ne. s  ) then
        print *,' ERROR(5) '
      endif
    end subroutine 
  end 
