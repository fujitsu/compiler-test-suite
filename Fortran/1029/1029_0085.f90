integer::i(0:48)
logical::l(0:48)

do k=0,48
  i=(/(0,j=0,48)/)
  i(k)=1
  call sub0(i,l)
  call sub1(l)
enddo

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
           ( (l(0).or.l(1).or.l(2)) .or. (l(0).or.l(3).or.l(4)) ) &
           .or. &
           ( (l(0).or.l(5).or.l(6)) .or. (l(0).or.l(7).or.l(8)) ) &
         ) &
         .or. &
         ( &
           ( (l(0).or.l(9).or.l(10)) .or. (l(0).or.l(11).or.l(12)) ) &
           .or. &
           ( (l(0).or.l(13).or.l(14)) .or. (l(0).or.l(15).or.l(16)) ) &
         ) &
       ) &
       .or. &
       ( &
         ( &
           ( (l(0).or.l(17).or.l(18)) .or. (l(0).or.l(19).or.l(20)) ) &
           .or. &
           ( (l(0).or.l(21).or.l(22)) .or. (l(0).or.l(23).or.l(24)) ) &
         ) &
         .or. &
         ( &
           ( (l(0).or.l(25).or.l(26)) .or. (l(0).or.l(27).or.l(28)) ) &
           .or. &
           ( (l(0).or.l(29).or.l(30)) .or. (l(0).or.l(31).or.l(32)) ) &
         ) &
       ) &
       .or. &
       ( &
         ( &
           ( (l(0).or.l(33).or.l(34)) .or. (l(0).or.l(35).or.l(36)) ) &
           .or. &
           ( (l(0).or.l(37).or.l(38)) .or. (l(0).or.l(39).or.l(40)) ) &
         ) &
         .or. &
         ( &
           ( (l(0).or.l(41).or.l(42)) .or. (l(0).or.l(43).or.l(44)) ) &
           .or. &
           ( (l(0).or.l(45).or.l(46)) .or. (l(0).or.l(47).or.l(48)) ) &
         ) &
       ) &
   ) goto 100
 write(6,*) "NG"
100 continue
end
