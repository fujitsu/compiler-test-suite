integer*1  i1(10)
integer*2  i2(10)
integer*4  i4(10)
integer*8  i8(10)
logical*1  l1(10)
logical*2  l2(10)
logical*4  l4(10)
logical*8  l8(10)
real*4     r4(10)
real*8     r8(10)
real*16    r16(10)
complex*8   c8(10)
complex*16  c16(10)
complex*32  c32(10)

i1 = (/1_1,2_1,3_1,4_1,5_1,6_1,7_1,8_1,9_1,10_1/)
write(1,*)
i2 = (/1_2,2_2,3_2,4_2,5_2,6_2,7_2,8_2,9_2,10_2/)
write(1,*)
i4 = (/1_4,2_4,3_4,4_4,5_4,6_4,7_4,8_4,9_4,10_4/)
write(1,*)
i8 = (/1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8,9_8,10_8/)
write(1,*)
r4 = (/1.0_4,2.0_4,3.0_4,4.0_4,5.0_4,6.0_4,7.0_4,8.0_4,9.0_4,10.0_4/)
write(1,*)
r8 = (/1.0_8,2.0_8,3.0_8,4.0_8,5.0_8,6.0_8,7.0_8,8.0_8,9.0_8,10.0_8/)
write(1,*)
r16= (/1.0_16,2.0_16,3.0_16,4.0_16,5.0_16,6.0_16,7.0_16,8.0_16,9.0_16,10.0_16/)
write(1,*)
l1 = (/.false._1,.true._1,.false._1,.true._1,.false._1,.true._1,.false._1,.true._1,.false._1,.true._1/)
write(1,*)
l2 = (/.false._2,.true._2,.false._2,.true._2,.false._2,.true._2,.false._2,.true._2,.false._2,.true._2/)
write(1,*)
l4 = (/.false._4,.true._4,.false._4,.true._4,.false._4,.true._4,.false._4,.true._4,.false._4,.true._4/)
write(1,*)
l8 = (/.false._8,.true._8,.false._8,.true._8,.false._8,.true._8,.false._8,.true._8,.false._8,.true._8/)
write(1,*)
c8 = (/(1.0_4,1.0_4),(2.0_4,2.0_4),(3.0_4,3.0_4),(4.0_4,4.0_4),(5.0_4,5.0_4),(6.0_4,6.0_4),(7.0_4,7.0_4),(8.0_4,8.0_4),(9.0_4,9.0_4),(10.0_4,10.0_4)/)
write(1,*)
c16= (/(1.0_8,1.0_8),(2.0_8,2.0_8),(3.0_8,3.0_8),(4.0_8,4.0_8),(5.0_8,5.0_8),(6.0_8,6.0_8),(7.0_8,7.0_8),(8.0_8,8.0_8),(9.0_8,9.0_8),(10.0_8,10.0_8)/)
write(1,*)
c32= (/(1.0_16,1.0_16),(2.0_16,2.0_16),(3.0_16,3.0_16),(4.0_16,4.0_16),(5.0_16,5.0_16),(6.0_16,6.0_16),(7.0_16,7.0_16),(8.0_16,8.0_16),(9.0_16,9.0_16),(10.0_16,10.0_16)/)
write(1,*)

do i=1,10
  if (i1(i).ne.i .or. i2(i).ne.i .or. i4(i).ne.i.or. i8(i).ne.i) goto20
  if (r4(i).ne.i .or. r8(i).ne.i .or. r16(i).ne.i) goto20
  if (c8(i).ne.cmplx(i,i) .or. c16(i).ne.dcmplx(i,i) .or. c16(i).ne.dcmplx(i,i)) goto20
  if (mod(i,2) .eq. 1) then
    if (l1(i) .or. l2(i) .or. l4(i) .or. l8(i)) goto 20
  else
    if (.not.l1(i) .or. .not.l2(i) .or. .not.l4(i) .or. .not.l8(i) ) goto 20
  endif		
enddo
write(6,*) ' OK '
goto 30
20 write(6,*) ' NG '
write(6,*) i1
write(6,*) i2
write(6,*) i4
write(6,*) i8
write(6,*) l1
write(6,*) l2
write(6,*) l4
write(6,*) l8
write(6,1) r4
write(6,1) r8
write(6,1) r16
write(6,2) c8
write(6,2) c16
write(6,2) c32
1 format(10f6.2)
2 format(10('(',f6.2,',',f6.2,')',1H ))
30 continue
end

