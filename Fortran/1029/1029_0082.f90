integer::i(0:48)
logical::l(0:48)

i=(/(1,j=0,48)/)
do j=2,48,2
  i(j)=0
enddo
call sub0(i,l)
call sub1(l)

i=(/(1,j=0,48)/)
do j=1,47,2
  i(j)=0
enddo
call sub0(i,l)
call sub1(l)

i=(/(1,j=0,48)/)
i(0)=0
call sub0(i,l)
call sub1(l)

print *,'pass'
end

subroutine sub0(i,l)
integer::i(0:48)
logical::l(0:48)

where(i>=1)
  l=.true.
elsewhere
  l=.false.
endwhere

end

subroutine sub1(l)
logical::l(0:48)
if (   ( &
         ( &
           ( (l(0).and.l(1).and.l(2)) .or. (l(0).and.l(3).and.l(4)) ) &
           .or. &
           ( (l(0).and.l(5).and.l(6)) .or. (l(0).and.l(7).and.l(8)) ) &
         ) &
         .or. &
         ( &
           ( (l(0).and.l(9).and.l(10)) .or. (l(0).and.l(11).and.l(12)) ) &
           .or. &
           ( (l(0).and.l(13).and.l(14)) .or. (l(0).and.l(15).and.l(16)) ) &
         ) &
       ) &
       .or. &
       ( &
         ( &
           ( (l(0).and.l(17).and.l(18)) .or. (l(0).and.l(19).and.l(20)) ) &
           .or. &
           ( (l(0).and.l(21).and.l(22)) .or. (l(0).and.l(23).and.l(24)) ) &
         ) &
         .or. &
         ( &
           ( (l(0).and.l(25).and.l(26)) .or. (l(0).and.l(27).and.l(28)) ) &
           .or. &
           ( (l(0).and.l(29).and.l(30)) .or. (l(0).and.l(31).and.l(32)) ) &
         ) &
       ) &
       .or. &
       ( &
         ( &
           ( (l(0).and.l(33).and.l(34)) .or. (l(0).and.l(35).and.l(36)) ) &
           .or. &
           ( (l(0).and.l(37).and.l(38)) .or. (l(0).and.l(39).and.l(40)) ) &
         ) &
         .or. &
         ( &
           ( (l(0).and.l(41).and.l(42)) .or. (l(0).and.l(43).and.l(44)) ) &
           .or. &
           ( (l(0).and.l(45).and.l(46)) .or. (l(0).and.l(47).and.l(48)) ) &
         ) &
       ) &
   ) then
 write(6,*) "NG"
endif
end
