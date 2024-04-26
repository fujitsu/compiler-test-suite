
      character*(5),dimension(2,2):: a,b
      call       initc(a,b)
      call       ss1(a,b,2)
      end

      subroutine ss1(va,vb,i)
      character*(*),dimension(i,i)::va,vb
      integer      ,dimension(2,2)::vm
      call initi(vm)
      call sdf6(char(vm)//va(:,:)(i:3)//vb(:,:)(i:3))
      
      end

      subroutine sdf6(va)
      character*(*)   ,dimension(4)  ::va
      character(len=5),dimension(2,2)::sa,sb,dvt
      integer         ,dimension(2,2)::sm

      call initc(sa,sb)
      call initi(sm)
      do j=1,2
         do i=1,2
            dvt(i,j)=char(sm(i,j))//sa(i,j)(2:3)//sb(i,j)(2:3)
         enddo
      enddo
      if(SIZE(PACK(va,va .ne. RESHAPE(dvt,(/4/)))) .eq. 0) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
         write(6,*) 'true value=',va
         write(6,*) 'calc value=',dvt
      endif
      end

      subroutine initc(a,b)
      character*(5),dimension(2,2)::a,b
      a(1,1)='12345'
      a(2,1)='67890'
      a(1,2)='abcde'
      a(2,2)='fghij'
      b(1,1)='klmno'
      b(2,1)='pqrst'
      b(1,2)='uvwxy'
      b(2,2)='z1234'
      return
      end
      
      subroutine initi(m)
      integer ,dimension(2,2)::m
      do j=1,2
         do i=1,2
            m(i,j)=(i-1)+(j-1)*2+1
         enddo
      enddo
      return
      end
