
      program main
      structure /int_str/
        integer,dimension(3,3,3)::i4_a,i4_b
      end structure
      type       real_str
        sequence
        real   ,dimension(3,3,3)::r4_a,r4_b
      end type
      type       log_str
        sequence
        logical,dimension(3,3,3)::l4_a,l4_b
      end type

      structure /str/
        type(int_str ):: int
        type(real_str):: real
        union
          map ; type(log_str)           :: slog   ;end map
          map ; logical,dimension(3,3,3):: tlog_a
                logical,dimension(3,3,3):: tlog_b ;end map
        end union
      end structure

      type(str) str_a,str_b
      str_b%int  = int_str (reshape((/(  0    ,i=1,27)/),(/3,3,3/)), &
                            reshape((/(  99   ,i=1,27)/),(/3,3,3/)))
      str_b%real = real_str(reshape((/(100    ,i=1,27)/),(/3,3,3/)), &
                            reshape((/(  1    ,i=1,27)/),(/3,3,3/)))
      str_b%tlog_a = reshape((/(.true. ,i=1,27)/),(/3,3,3/))
      str_b%tlog_b = reshape((/(.false.,i=1,27)/),(/3,3,3/))

      str_a%slog%l4_a = .false.
      str_a%tlog_b    = str_a%tlog_a

      where((str_a%tlog_a .eqv. .false.).and. &
            (str_a%tlog_b .eqv. .false.)     )
        str_a%int%i4_a   = 0
        str_a%int%i4_b   = 99
        str_a%real%r4_a  = 0.
        str_a%real%r4_b  = 99.

      elsewhere
        str_a%int%i4_a   = 0
        str_a%int%i4_b   = -99
        str_a%real%r4_a  = 0.
        str_a%real%r4_b  = -99.
        str_a%slog%l4_a = .true.
      end where
      call sub(str_a)
      
      where(.not.((str_a%tlog_b) .neqv. (str_a%tlog_a)))
      elsewhere
        str_a%real%r4_b = str_a%real%r4_a + real(str_a%int%i4_a)
        str_a%real%r4_a = str_a%real%r4_b + real(str_a%int%i4_b)
      endwhere

      if(ALL(str_a%int %i4_a .eq.  str_b%int %i4_a) .AND. &
         ALL(str_a%int %i4_b .eq.  str_b%int %i4_b) .AND. & 
         ALL(str_a%real%r4_a .eq.  str_b%real%r4_a) .AND. &
         ALL(str_a%real%r4_b .eq.  str_b%real%r4_b) .AND. &
         ALL(str_a%slog%l4_a .eqv. str_b%slog%l4_a) .AND. &
         ALL(str_a%slog%l4_b .eqv. str_b%slog%l4_b)       ) then
         write(6,*) '*** ok !! ***'
      else
         write(6,*) '*** ng ?? ***'
      endif
      stop
      end

      subroutine sub(str_a)
      structure /int_str/
        integer,dimension(3,3,3)::i4_a,i4_b
      end structure
      type        real_str
        sequence
        real   ,dimension(3,3,3)::r4_a,r4_b
      end type
      type log_str
        sequence
        logical,dimension(3,3,3)::l4_a,l4_b
      end type

      structure /str/
        type(int_str ):: int
        type(real_str):: real
        union
          map ; type(log_str)           :: slog   ;end map
          map ; logical,dimension(3,3,3):: tlog_a
                logical,dimension(3,3,3):: tlog_b ;end map
        end union
      end structure

      type(str) str_a

      do j = 1 ,3
         do i = 1 ,3
            where(.not.(str_a%slog%l4_a(i,j,:)) .and. &
                  .not.(str_a%slog%l4_b(i,j,:))      )
              str_a%int %i4_a(i,j,:)=      str_a%int %i4_b(i,j,:) - 99
              str_a%real%r4_a(i,j,:)= cos (str_a%real%r4_a(i,j,:))
              str_a%tlog_a(i,j,:)   =.not.(str_a%slog%l4_a(i,j,:))
            elsewhere
              str_a%int%i4_a(i,j,:) = -1
            endwhere
         end do
      end do
      return
      end
