
      integer*8, parameter :: zz=z'8000000000000000'
      integer*8, parameter,dimension(-1:22) ::
     +     ia=(/-1_8,0_8,1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8,9_8,10_8,11_8,
     +         12_8,13_8,14_8,15_8,16_8,17_8,18_8,
     +         19_8,20_8,100000000000000_8,zz/)
      integer, parameter,dimension(-1:22) ::
     +    i=(/selected_int_kind(r=ia(-1)),
     +        selected_int_kind(r=ia(0)),
     +        selected_int_kind(r=ia(1)),
     +        selected_int_kind(r=ia(2)),
     +        selected_int_kind(r=ia(3)),
     +        selected_int_kind(r=ia(4)),
     +        selected_int_kind(r=ia(5)),
     +        selected_int_kind(r=ia(6)),
     +        selected_int_kind(r=ia(7)),
     +        selected_int_kind(r=ia(8)),
     +        selected_int_kind(r=ia(9)),
     +        selected_int_kind(ia(10)),
     +        selected_int_kind(ia(11)),
     +        selected_int_kind(ia(12)),
     +        selected_int_kind(ia(13)),
     +        selected_int_kind(ia(14)),
     +        selected_int_kind(ia(15)),
     +        selected_int_kind(ia(16)),
     +        selected_int_kind(ia(17)),
     +        selected_int_kind(ia(18)),
     +        selected_int_kind(ia(19)),
     +        selected_int_kind(ia(20)),
     +        selected_int_kind(ia(21)),
     +        selected_int_kind(ia(22)) /)

      do n=-1,22
        call check(i(n),selected_int_kind(r=ia(n)))
      enddo

      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
