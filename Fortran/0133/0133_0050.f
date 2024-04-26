      module modmod
      integer res
      integer,parameter::N=10
      integer,parameter::ANS=12
      end module modmod

      program main
      use modmod
      integer,dimension(1:N)::iv1,iv2,iv3,iv4

      iv1 = (/(mod(i,2),i=1,N)/)
      iv2 = (/(mod(i,3),i=1,N)/)
      iv3 = (/(mod(i,4),i=1,N)/)
      iv4 = (/(mod(i,5),i=1,N)/)
      do i=1,N
         do j=1,N
            call sub1(iv1+iv2,iv3+iv4,i,j)
            call sub2(iv2-iv1,iv4-iv3,i,j)
         enddo
      enddo

      if (res.eq.ANS) then
         print *,"OK"
      else
         print *,res
         print *,"NG"
      endif
      end

      subroutine sub1(s1,s2,i,j)
      use modmod
      integer,dimension(1:N)::s1,s2
      integer,dimension(1:N)::d1,d2
      integer i,j

      d1 = s1
      d2 = s2
      where (s1>s2)
        d1 = i
      elsewhere
        d2 = j
      endwhere

      res = maxval(d1-d2)
      end subroutine sub1

      subroutine sub2(s1,s2,i,j)
      use modmod
      integer,dimension(1:N)::s1,s2
      integer,dimension(1:N)::d1,d2
      integer i,j

      d1 = s1
      d2 = s2
      where (s1>0)
        d1 = i
      endwhere
      where (s2>0)
        d2 = j
      endwhere
      res = maxval(d1-d2)
      end subroutine sub2
