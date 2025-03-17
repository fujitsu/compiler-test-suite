integer::i(0:48)
logical::l(0:48)

i=(/(0,j=0,48)/)
i(0)=1;i(47)=1;i(48)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(45)=1;i(46)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(43)=1;i(44)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(41)=1;i(42)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(39)=1;i(40)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(37)=1;i(38)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(35)=1;i(36)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(33)=1;i(34)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(31)=1;i(32)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(29)=1;i(30)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(27)=1;i(28)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(25)=1;i(26)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(23)=1;i(24)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(21)=1;i(22)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(19)=1;i(20)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(17)=1;i(18)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(15)=1;i(16)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(13)=1;i(14)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i(11)=1;i(12)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i( 9)=1;i(10)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i( 7)=1;i( 8)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i( 5)=1;i( 6)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i( 3)=1;i( 4)=1
call sub0(i,l)
call sub1(l)

i=(/(0,j=0,48)/)
i(0)=1;i( 1)=1;i( 2)=1
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
   ) goto 100
 write(6,*) "NG"
100 continue
end
