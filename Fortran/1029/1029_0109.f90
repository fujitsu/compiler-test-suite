      logical::l1,l2,l3,l4,l5,l6

      l1=.false. ; l2=.true. ; l3=.false.
      l3=.true. ; l4=.true. ; l6=.true.
      l5=.false.

      call sub(l1,l2,l3,l4,l5,l6)

      print *,'pass'
      end

      subroutine sub(l1,l2,l3,l4,l5,l6)
      logical::l1,l2,l3,l4,l5,l6

      if ( l1.neqv.(l2.and.l3) ) goto 100
        write(6,*) "NG"
  100 continue

      if ( (l1.neqv.l2 .and. l3.eqv.l4) ) goto 200
        write(6,*) "NG"
  200 continue

      if ( (l1.neqv.l2 .and. l3.eqv.l4) .or. l5.eqv.l6) goto 300
        write(6,*) "NG"
  300 continue

      end
