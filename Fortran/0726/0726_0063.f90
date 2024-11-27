 call s1
 print *,'pass'
 end
subroutine s1
  write(1,'(f20.15,1x,z16)') (atan(1.0d0)*2.0d0),(atan(1.0d0)*2.0d0)
  write(1,'(f20.15,1x,z8)') sngl(atan(1.0d0)*2.0d0),sngl(atan(1.0d0)*2.0d0)
  write(1,'(f20.15,1x,z8)') (atan(1.0)*2.0),(atan(1.0)*2.0)
  write(1,'(f20.15,1x,z8)') 0.0+z'3fc90fab',0.0+z'3fc90fab'
  write(1,'(f20.15,1x,z8)') 2.0*z'3fc90fab',2.0*z'3fc90fab'
  write(1,'(f20.15,1x,z8)') (atan(1.0)*2.0)-z'3fc90fab',(atan(1.0)*2.0)-z'3fc90 fab'
  write(1,'(f30.15,1x,z16)') 0.0d0+z'4348000000000000',0.0d0+z'4348000000000000 '
end
