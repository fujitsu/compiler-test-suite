      call aa
      call bb
      call cc
      print *,'pass'
      stop
      end
      subroutine aa
      structure /ty1/
        character*4 a
      endstructure
      record/ty1/ typ1(9)
      typ1(1)%a(1:4)='no.1'
      typ1(2)%a(1:4)='no.2'
      typ1(3)%a(1:4)='no.3'
      typ1(4)%a(1:4)='no.4'
      typ1(5)%a(1:4)='no.5'
      typ1(6)%a(1:4)='no.6'
      typ1(7)%a(1:4)='no.7'
      typ1(8)%a(1:4)='no.8'
      typ1(9)%a(1:4)='no.9'
      write(*,*) ((typ1(i)%a(1:j),i=1,9),j=1,4)
      write(*,*) 'nnnnnnnnnnononononononononono.no.no.no.no.no.no.no.no.
     1no.1no.2no.3no.4no.5no.6no.7no.8no.9'
      end
      subroutine bb
      type ty1
        character*4 a(9)
      endtype
      type(ty1)::typ1
      do k=1,9,1
       typ1%a(k)(:4)='test'
      enddo
      write(*,*) ((typ1%a(i)(1:j),i=1,9),j=1,4)
      write(*,*) 'ttttttttttatatatatatatatatatantantantantantantantantan
     1testtesttesttesttesttesttesttesttest'
      end
      subroutine cc
      type ty1
        character*4 a(9)
      endtype
      type(ty1)::typ1
      type ty2
        integer*4 i,j
      endtype
      type(ty2)::typ2
      typ2%i=1
      typ2%j=4
      do k=typ2%i,9,typ2%i
      typ1%a(k)(typ2%i:typ2%j)='king'
      enddo
      call suba(typ1%a,typ2%i,typ2%j)
      end
      subroutine suba(x,y,z)
      character*(*) x(9)
      integer y,z
      write(*,*) ((x(i)(y:z),i=1,9),z=1,4)
      write(*,*) 'kkkkkkkkkkikikikikikikikikikilkilkilkilkilkilkilkilkil
     1kingkingkingkingkingkingkingkingking'
      end
