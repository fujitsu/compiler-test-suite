
      program main
      integer*4 N
      parameter (N=100)
      integer*4, dimension(N) :: i1,i2,i3,i4
      real*4, dimension(N) :: r1,r2,r3,r4
      logical, dimension(N) :: m1,m2,m3,m4
      character*1, dimension(N) :: c1,c2,c3,c4
      character*1, dimension(N) :: data_c1,data_c2
      integer*4 mat_i1,mat_i2,data_i
      integer*4 max_i1,max_i2,cal_data,ans_data
      integer*4, dimension(N) :: data_i1,data_i2
      parameter (ans_data=1348875)

      call init_i()
      call init_r()
      call init_m()
      call init_c()

      call change_i()
      call change_r()
      call change_m()
      call change_c()

      where ((i1.eq.i2).or.(i3.eq.i4))
         data_c1 = merge(c1,c2,m1)
         data_c2 = merge(c3,c4,m2)
      elsewhere
         data_c1 = merge(c1,c2,m3)
         data_c2 = merge(c3,c4,m4)
      endwhere

      mat_i1 = maxval(min(i1,i3))
      mat_i2 = maxval(min(i2,i4))

      data_i = mat_i2 - mat_i1
      if (data_i > 0) then
         where ((r1 > real(2)).or.(r2 > real(2)))
            data_i1 = dot_product(i1, i2) - (sum(i1) + sum(i2))
            data_i2 = dot_product(i3, i4) - (sum(i3) + sum(i4))
         elsewhere
            data_i1 = dot_product(i3, i4) - (sum(i3) + sum(i4))
            data_i2 = dot_product(i1, i2) - (sum(i1) + sum(i2))            
         endwhere
      else
         where ((r3 > real(2)).or.(r4 > real(2)))
            data_i1 = dot_product(i3, i4) - (sum(i3) + sum(i4))
            data_i2 = dot_product(i1, i2) - (sum(i1) + sum(i2))                     
         elsewhere
            data_i1 = dot_product(i1, i2) - (sum(i1) + sum(i2))
            data_i2 = dot_product(i3, i4) - (sum(i3) + sum(i4))
         endwhere
      endif

      max_i1 = maxval(data_i1)
      max_i2 = maxval(data_i2)

      where (r1 < real(2))
         r1 = real(iachar(data_c1))
      elsewhere
         r1 = real(iachar(data_c2))
      endwhere
      where (r2 < real(2))
         r2 = real(iachar(data_c1))
      elsewhere
         r2 = real(iachar(data_c2))
      endwhere
      where (r3 < real(2))
         r3 = real(iachar(data_c2))
      elsewhere
         r3 = real(iachar(data_c1))
      endwhere
      where (r4 < real(2))
         r4 = real(iachar(data_c2))
      elsewhere
         r4 = real(iachar(data_c1))
      endwhere
      
      if (max_i1 > max_i2) then
         where ((i3 > 2).or.(i4 > 2))
            data_i1=int(dot_product(r1,r2)-(sum(r1)+sum(r2)))-data_i1
            data_i2=int(dot_product(r3,r4)-(sum(r3)+sum(r4)))-data_i2
         elsewhere
            data_i1=int(dot_product(r3,r4)-(sum(r3)+sum(r4)))-data_i1
            data_i2=int(dot_product(r1,r2)-(sum(r1)+sum(r2)))-data_i2
         endwhere
      else
         where ((i3 > 2).or.(i4 > 2))
            data_i1=int(dot_product(r3,r4)-(sum(r3)+sum(r4)))-data_i1
            data_i2=int(dot_product(r1,r2)-(sum(r1)+sum(r2)))-data_i2
         elsewhere
            data_i1=int(dot_product(r1,r2)-(sum(r1)+sum(r2)))-data_i1
            data_i2=int(dot_product(r3,r4)-(sum(r3)+sum(r4)))-data_i2
         endwhere
      endif

      max_i1 = sum(data_i1) - maxval(data_i1)
      max_i2 = sum(data_i2) - maxval(data_i2)

      cal_data = max_i1 - max_i2

      if (cal_data .eq. ans_data) then
         print *,'OK'
      else
         print *,'NG'
      endif

      contains
      subroutine init_i()
      i1 = 1
      i2 = 2
      i3 = 3
      i4 = 4
      end subroutine

      subroutine init_r()
      r1 = real(1)
      r2 = real(2)
      r3 = real(3)
      r4 = real(4)
      end subroutine

      subroutine init_m()
      m1 = .true.
      m2 = .true.
      m3 = .true.
      m4 = .true. 
      end subroutine

      subroutine init_c()
      c1 = 'a'
      c2 = 'b'
      c3 = 'c'
      c4 = 'd'
      end subroutine

      subroutine change_i()
      integer judge

      do i=1,N
         judge = mod(i,5)
         if (judge .eq. 4) then
            i1(i) = judge
         endif
         if (judge .eq. 3) then
            i2(i) = judge
         endif
         if (judge .eq. 2) then
            i3(i) = judge
         endif
         if (judge .eq. 1) then
            i4(i) = judge
         endif
      enddo
      end subroutine

      subroutine change_r()
      integer judge
      do i=1,N
         judge = mod(i,6)
         if (judge .eq. 4) then
            r1(i) = real(judge)
         endif
         if (judge .eq. 3) then
            r2(i) = real(judge)
         endif
         if (judge .eq. 2) then
            r3(i) = real(judge)
         endif
         if (judge .eq. 1) then
            r4(i) = real(judge)
         endif
      enddo
      end subroutine

      subroutine change_m()
      integer judge
      do i=1,N
         judge = mod(i,7)
         if (judge .eq. 4) then
            m1(i) = .false.
         endif
         if (judge .eq. 3) then
            m2(i) = .false.
         endif
         if (judge .eq. 2) then
            m3(i) = .false.
         endif
         if (judge .eq. 1) then
            m4(i) = .false.
         endif
      enddo
      end subroutine

      subroutine change_c()
      integer judge
      do i=1,N
         judge = mod(i,9)
         if (judge .eq. 8) then
            c1(i) = c3(i)
         endif
         if (judge .eq. 7) then
            c2(i) = c4(i)
         endif
         if (judge .eq. 6) then
            c3(i) = c1(i)
         endif
         if (judge .eq. 5) then
            c4(i) = c2(i)
         endif
         if (judge .eq. 4) then
            c1(i) = c2(i)
         endif
         if (judge .eq. 3) then
            c2(i) = c3(i)
         endif
         if (judge .eq. 2) then
            c3(i) = c4(i)
         endif
         if (judge .eq. 1) then
            c4(i) = c1(i)
         endif
      enddo
      end subroutine

      end
