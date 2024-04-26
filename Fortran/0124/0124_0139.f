
      module data_mod
      integer, parameter:: N=10
      integer, parameter:: ANS=20
      real(kind=4) fary1(N)
      real(kind=4) fary2(N)
      real(kind=8) dary1(N)
      real(kind=8) dary2(N)
      real(kind=4),parameter :: FC10=1.0E0
      real(kind=4),parameter :: FC11=1.1E0
      real(kind=8),parameter :: DC10=1.0D0
      real(kind=8),parameter :: DC11=1.1D0

      contains
      subroutine init_data

      fary1 = 0.E0
      fary2 = 0.E0
      dary1 = 0.D0
      dary2 = 0.D0
      do i=1,N
         fary1(i) = 1.E0 * real(MOD(i,2),kind=4)
         dary1(i) = 1.D0 * real(MOD(i,2),kind=8)
      enddo
      where (fary1 .eq. 0.)
         fary2 = 1.1E0
      endwhere
      where (dary1 .eq. 0.)
         dary2 = 1.1D0
      endwhere

      end subroutine init_data

      subroutine print_data
      print *,fary1
      print *,fary2
      print *,dary1
      print *,dary2
      end subroutine print_data

      end module data_mod


      program main
      use data_mod
      integer(kind=4)::res=0
      real(kind=4) tmp4
      real(kind=8) tmp8

      call init_data

      do i=1,N
         if (fary1(i) .eq. FC10) then
            res = res + 1
         else
            res = res - 1
         endif
         if (fary1(i) .eq. DC10) then
            res = res + 1
         else
            res = res - 1
         endif
         if (fary2(i) .eq. FC11) then
            res = res + 1
         else
            res = res - 1
         endif
         if (fary2(i) .ne. DC11) then
            res = res + 1
         else
            res = res - 1
         endif
         if (dary1(i) .eq. DC10) then
            res = res + 1
         else
            res = res - 1
         endif
         if (dary2(i) .eq. DC11) then
            res = res + 1
         else
            res = res - 1
         endif
      enddo

      do i=1,N
         tmp4 = fary1(i)
         if (tmp4 .eq. FC10) then
            res = res + 1
         else
            res = res - 1
         endif
         if (tmp4 .eq. DC10) then
            res = res + 1
         else
            res = res - 1
         endif
         tmp4 = fary2(i)
         if (tmp4 .eq. FC11) then
            res = res + 1
         else
            res = res - 1
         endif
         if (tmp4 .ne. DC11) then
            res = res + 1
         else
            res = res - 1
         endif
         tmp8 = dary1(i)
         if (tmp8 .eq. DC10) then
            res = res + 1
         else
            res = res - 1
         endif
         tmp8 = dary2(i)
         if (tmp8 .eq. DC11) then
            res = res + 1
         else
            res = res - 1
         endif
      enddo

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
