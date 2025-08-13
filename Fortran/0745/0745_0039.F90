  implicit real(4)(r)
  parameter (r01=z'00000000')
  parameter (r02=z'7f7fffff')
  parameter (r03=z'ff7fffff')
  parameter (r04=z'00800000')
  parameter (r05=z'80800000')
  parameter (r06=z'007fffff')
  parameter (r07=z'807fffff')
  parameter (r08=z'00000001')
  parameter (r09=z'80000001')
  parameter (r10=z'7f800000')
  parameter (r11=z'ff800000')
  parameter (r12=z'7fc00000')
  parameter (r13=z'ffc00000')
  parameter (r14=z'7f800001')
  parameter (r15=z'ff800001')

  if (abs(r01).gt.1e-10) then
    write(22,*)1
  endif
  if (abs(r01).le.1e-10) then
    write(22,*)2
  endif
  if (abs(r02).gt.1e-10) then
    write(22,*)3
  endif
  if (abs(r02).le.1e-10) then
    write(22,*)4
  endif
  if (abs(r03).gt.1e-10) then
    write(22,*)5
  endif
  if (abs(r03).le.1e-10) then
    write(22,*)6
  endif
  if (abs(r04).gt.1e-10) then
    write(22,*)7
  endif
  if (abs(r04).le.1e-10) then
    write(22,*)8
  endif
  if (abs(r05).gt.1e-10) then
    write(22,*)9
  endif
  if (abs(r05).le.1e-10) then
    write(22,*)10
  endif
  if (abs(r06).gt.1e-10) then
    write(22,*)11
  endif
  if (abs(r06).le.1e-10) then
    write(22,*)12
  endif
  if (abs(r07).gt.1e-10) then
    write(22,*)13
  endif
  if (abs(r07).le.1e-10) then
    write(22,*)14
  endif
  if (abs(r08).gt.1e-10) then
    write(22,*)15
  endif
  if (abs(r08).le.1e-10) then
    write(22,*)16
  endif
  if (abs(r09).gt.1e-10) then
    write(22,*)17
  endif
  if (abs(r09).le.1e-10) then
    write(22,*)18
  endif
  if (abs(r10).gt.1e-10) then
    write(22,*)19
  endif
  if (abs(r10).le.1e-10) then
    write(22,*)20
  endif
  if (abs(r11).gt.1e-10) then
    write(22,*)21
  endif
  if (abs(r11).le.1e-10) then
    write(22,*)22
  endif
  if (abs(r12).gt.1e-10) then
    write(22,*)23
  endif
  if (abs(r12).le.1e-10) then
    write(22,*)24
  endif
  if (abs(r13).gt.1e-10) then
    write(22,*)25
  endif
  if (abs(r13).le.1e-10) then
    write(22,*)26
  endif
  if (abs(r14).gt.1e-10) then
    write(22,*)27
  endif
  if (abs(r14).le.1e-10) then
    write(22,*)28
  endif
  if (abs(r15).gt.1e-10) then
    write(22,*)29
  endif
  if (abs(r15).le.1e-10) then
    write(22,*)30
  endif
  write(22,*)999
  rewind 22
  read(22,*) ik;if (ik/=2)write(6,*) "NG"
  read(22,*) ik;if (ik/=3)write(6,*) "NG"
  read(22,*) ik;if (ik/=5)write(6,*) "NG"
  read(22,*) ik;if (ik/=8)write(6,*) "NG"
  read(22,*) ik;if (ik/=10)write(6,*) "NG"
  read(22,*) ik;if (ik/=12)write(6,*) "NG"
  read(22,*) ik;if (ik/=14)write(6,*) "NG"
  read(22,*) ik;if (ik/=16)write(6,*) "NG"
  read(22,*) ik;if (ik/=18)write(6,*) "NG"
  read(22,*) ik;if (ik/=19)write(6,*) "NG"
  read(22,*) ik;if (ik/=21)write(6,*) "NG"
#if defined(_WIN32) || defined(__i386) || defined(__x86_64)
#else
  read(22,*) ik;if (ik/=999)write(6,*) "NG"
#endif
print *,'pass'
  end
