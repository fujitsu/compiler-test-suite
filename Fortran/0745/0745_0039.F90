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
    write(1,*)1
  endif
  if (abs(r01).le.1e-10) then
    write(1,*)2
  endif
  if (abs(r02).gt.1e-10) then
    write(1,*)3
  endif
  if (abs(r02).le.1e-10) then
    write(1,*)4
  endif
  if (abs(r03).gt.1e-10) then
    write(1,*)5
  endif
  if (abs(r03).le.1e-10) then
    write(1,*)6
  endif
  if (abs(r04).gt.1e-10) then
    write(1,*)7
  endif
  if (abs(r04).le.1e-10) then
    write(1,*)8
  endif
  if (abs(r05).gt.1e-10) then
    write(1,*)9
  endif
  if (abs(r05).le.1e-10) then
    write(1,*)10
  endif
  if (abs(r06).gt.1e-10) then
    write(1,*)11
  endif
  if (abs(r06).le.1e-10) then
    write(1,*)12
  endif
  if (abs(r07).gt.1e-10) then
    write(1,*)13
  endif
  if (abs(r07).le.1e-10) then
    write(1,*)14
  endif
  if (abs(r08).gt.1e-10) then
    write(1,*)15
  endif
  if (abs(r08).le.1e-10) then
    write(1,*)16
  endif
  if (abs(r09).gt.1e-10) then
    write(1,*)17
  endif
  if (abs(r09).le.1e-10) then
    write(1,*)18
  endif
  if (abs(r10).gt.1e-10) then
    write(1,*)19
  endif
  if (abs(r10).le.1e-10) then
    write(1,*)20
  endif
  if (abs(r11).gt.1e-10) then
    write(1,*)21
  endif
  if (abs(r11).le.1e-10) then
    write(1,*)22
  endif
  if (abs(r12).gt.1e-10) then
    write(1,*)23
  endif
  if (abs(r12).le.1e-10) then
    write(1,*)24
  endif
  if (abs(r13).gt.1e-10) then
    write(1,*)25
  endif
  if (abs(r13).le.1e-10) then
    write(1,*)26
  endif
  if (abs(r14).gt.1e-10) then
    write(1,*)27
  endif
  if (abs(r14).le.1e-10) then
    write(1,*)28
  endif
  if (abs(r15).gt.1e-10) then
    write(1,*)29
  endif
  if (abs(r15).le.1e-10) then
    write(1,*)30
  endif
  write(1,*)999
  rewind 1
  read(1,*) ik;if (ik/=2)write(6,*) "NG"
  read(1,*) ik;if (ik/=3)write(6,*) "NG"
  read(1,*) ik;if (ik/=5)write(6,*) "NG"
  read(1,*) ik;if (ik/=8)write(6,*) "NG"
  read(1,*) ik;if (ik/=10)write(6,*) "NG"
  read(1,*) ik;if (ik/=12)write(6,*) "NG"
  read(1,*) ik;if (ik/=14)write(6,*) "NG"
  read(1,*) ik;if (ik/=16)write(6,*) "NG"
  read(1,*) ik;if (ik/=18)write(6,*) "NG"
  read(1,*) ik;if (ik/=19)write(6,*) "NG"
  read(1,*) ik;if (ik/=21)write(6,*) "NG"
#if defined(_WIN32) || defined(__i386) || defined(__x86_64)
#else
  read(1,*) ik;if (ik/=999)write(6,*) "NG"
#endif
print *,'pass'
  end
