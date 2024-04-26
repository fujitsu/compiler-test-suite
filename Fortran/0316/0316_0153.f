
      integer, parameter,dimension(-1:20) ::
     +    i=(/selected_int_kind(r=-1),
     +        selected_int_kind(r=0),
     +        selected_int_kind(r=1),
     +        selected_int_kind(r=2),
     +        selected_int_kind(r=3),
     +        selected_int_kind(r=4),
     +        selected_int_kind(r=5),
     +        selected_int_kind(r=6),
     +        selected_int_kind(r=7),
     +        selected_int_kind(r=8),
     +        selected_int_kind(r=9),
     +        selected_int_kind(10),
     +        selected_int_kind(11),
     +        selected_int_kind(12),
     +        selected_int_kind(13),
     +        selected_int_kind(14),
     +        selected_int_kind(15),
     +        selected_int_kind(16),
     +        selected_int_kind(17),
     +        selected_int_kind(18),
     +        selected_int_kind(19),
     +        selected_int_kind(20) /)

      do n=-1,20
        call check(i(n),selected_int_kind(r=n))
      enddo

      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
