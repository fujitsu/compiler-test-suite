      program main
      implicit none
      call nextch
      call expression
      write(6,*) ' ***** ok ***** '
      stop
      end
      subroutine nextch
      common /com/ch
      character*1 ch
      character*100 indata/'a+b*c-(d-e)*4'/
      integer ich/1/
      ch=indata(ich:ich)
      ich=ich+1
      if( ich == 100 ) ich = 100
      end
      recursive subroutine expression
      common /com/ch
      character*1 ch
      character*1 c
      logical minus_flag
      minus_flag = .false.
      if( ch == '+' ) then
        call nextch
      else if( ch == '-' ) then
        call nextch
        minus_flag = .true.
      endif
      call term
      if( minus_flag ) then
        call out('  neg    d0 ')
      endif
      do while( ch == '+' .or. ch == '-' .or. ch == '|' )
        c = ch
        call nextch
        call out(  '  push   do '  )
        call term
        select case( c )
        case ('+')
          call out(  '  add    (sp++),d0 ' )
        case ('-')
          call out(  '  pop    d1 ' )
          call out(  '  exg    d1,d0' )
          call out(  '  sub    d1,d0' )
        case ('|')
          call out(  '  or     (sp++),do ' )
        end select
      enddo
      return
      end

      recursive subroutine term
      common /com/ch
      character*1 ch
      character*1 c
      call factor
      do while( ch == '*' .or. ch == '/' .or. ch == '&' )
        c = ch
        call nextch
        call out(  '  push   do ' )
        call factor
        select case( c )
        case ('*')
          call out(  '  mul    (sp++),d0 ' )
        case ('/')
          call out(  '  pop    d1 ' )
          call out(  '  exg    d1,d0' )
          call out(  '  div    d1,d0' )
        case ('&')
          call out(  '  and    (sp++),do ' )
        end select
      enddo
      return
      end

      recursive subroutine factor
      common /com/ch
      character*1 ch
      if( ichar('a')<=ichar(ch) .and. ichar(ch)<=ichar('z') ) then
        call out(  '  move   '//ch//'  d0' )
      else if( ichar('0')<=ichar(ch).and.ichar(ch)<=ichar('9') ) then
        call out(  '  move  #'//ch//'  do' )
      else if( ch == '(' ) then
        call nextch
        call expression
        if( ch /= ')' ) then
          write(6,*) ' not found ) '
        endif
      else
        write(6,*) ' error '
      endif
      call nextch
      return
      end
      subroutine out(c)
      character*(*) c
      integer i/1/
      save    i
      character*40 outdata(20)/
     . '  move   a  d0',
     . '  push   do ',
     . '  move   b  d0',
     . '  push   do ',
     . '  move   c  d0',
     . '  mul    (sp++),d0',
     . '  add    (sp++),d0',
     . '  push   do',
     . '  move   d  d0',
     . '  push   do',
     . '  move   e  d0',
     . '  pop    d1',
     . '  exg    d1,d0',
     . '  sub    d1,d0',
     . '  push   do',
     . '  move  #4  do',
     . '  mul    (sp++),d0',
     . '  pop    d1',
     . '  exg    d1,d0',
     . '  sub    d1,d0'/
      if( c(1:len(c)) .ne. outdata(i)(1:len(c))) then
        write(6,*) ' ***** ng ***** '
        stop
      endif
      i=i+1
      return
      end
