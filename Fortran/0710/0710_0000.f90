 call s1
 print *,'pass'
  end
subroutine s1
      logical(kind=4),parameter::T=.true.,F=.false.
      logical(kind=4)::L041(10)/T,F,T,F,F,T,T,T,F,F/
      integer(kind=4)::i041(10)/3,1,4,1,5,9,2,6,5,3/
   character*100 r1,r2

      write(11,*)'ALL   ( F):',all(L041)
      write(11,*)'ANY   ( T):',any(L041)
      write(11,*)'COUNT ( 5):',count(L041)
      write(11,*)' '
      write(11,*)'SUM      (   39):',sum(i041)
      write(11,*)'PRODUCT  (97200):',product(i041)
      write(11,*)'DOT_PRODUCT(207):',dot_product(i041,i041)
      write(11,*)' '
      write(11,*)'MAXVAL( 9 ):',maxval(i041)
      write(11,*)'MINVAL( 1 ):',minval(i041)
      write(11,*)'MAXLOC(/6/):',maxloc(i041)
      write(11,*)'MINLOC(/2/):',minloc(i041)
write(12,'(a)')' ALL   ( F): F'
write(12,'(a)')' ANY   ( T): T'
write(12,'(a)')' COUNT ( 5): 5'
write(12,'(a)')'  '
write(12,'(a)')' SUM      (   39): 39'
write(12,'(a)')' PRODUCT  (97200): 97200'
write(12,'(a)')' DOT_PRODUCT(207): 207'
write(12,'(a)')'  '
write(12,'(a)')' MAXVAL( 9 ): 9'
write(12,'(a)')' MINVAL( 1 ): 1'
write(12,'(a)')' MAXLOC(/6/): 6'
write(12,'(a)')' MINLOC(/2/): 2'
rewind 11;rewind 12
do ih=1,12
read(11,'(a)') r1
read(12,'(a)') r2
end do
      end
