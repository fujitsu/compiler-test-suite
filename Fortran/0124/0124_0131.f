      module sub_mod
      integer,parameter::N=10
      integer,parameter::ANS=122
      integer,target:: aa, bb

      contains
      subroutine init_data
      aa = 1
      bb = 1
      end subroutine init_data

      end module sub_mod

      program main
      use sub_mod
      integer res
      interface
      subroutine treat_data(a,b,N)
      integer,target:: a,b
      integer,pointer::ap,bp
      integer,pointer::dum1,dum2
      end subroutine
      end interface

      call init_data

      aa = aa - 1
      bb = bb + 1

      call treat_data(aa,bb,N)

      res = aa + bb

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end

      subroutine treat_data(a,b,N)
      integer,target:: a,b
      integer,pointer::ap,bp
      integer,pointer::dum1,dum2

      ap=>a
      bp=>b

      do i=N,1,-2
         do j=1,N,3
            dum1 => ap
            dum2 => bp
            dum1 = dum1 + 1
            ap = ap + 1
            a = a  + 1
            dum1 => ap
            dum2 => bp
            dum2 = dum2 + 1
            bp = bp + 1
            b = b + 1
         enddo
      enddo
         
      end subroutine treat_data
