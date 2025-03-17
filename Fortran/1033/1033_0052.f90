      program main
       type z0
         integer,allocatable,dimension(:)::za
       end type
       type z1
         integer(8)::za_adress
         integer(8)::total_size  
         integer(8)::element_num
         integer(8)::lower_bound
         integer(8)::upper_bound
         integer(8)::size_factor
         integer(8)::size
       end type
       type y
         type(z0),pointer::struct_z0_pointer(:)
         type(z1)        ::struct_z1(2)
       end type y
       type(y) :: a

        allocate(a%struct_z0_pointer(2))
        allocate(a%struct_z0_pointer(1)%za(55:77))
        allocate(a%struct_z0_pointer(2)%za(555:777))

        a%struct_z0_pointer(1) = a%struct_z0_pointer(2)

        call s1( a )
        call s2( a )

        if (a%struct_z1(1)%element_num/= &
            a%struct_z1(2)%element_num) print *,'error 3'
        if (a%struct_z1(1)%lower_bound/= &
            a%struct_z1(2)%lower_bound) print *,'error 4'
        if (a%struct_z1(1)%upper_bound/= &
            a%struct_z1(2)%upper_bound) print *,'error 5'
        if (a%struct_z1(1)%size_factor/= &
            a%struct_z1(2)%size_factor) print *,'error 6'
        if (a%struct_z1(1)%size       /= &
            a%struct_z1(2)%size       ) print *,'error 7'
        print *,'pass'
       contains
        subroutine s1(c)
         type(y) :: c
         pointer (jj,kk)
          jj = loc(c%struct_z0_pointer(1))
          c%struct_z1(1)%za_adress = kk
          jj = jj + 4
          c%struct_z1(1)%total_size = kk
          jj = jj + 4
          c%struct_z1(1)%element_num = kk
          jj = jj + 4
          c%struct_z1(1)%lower_bound = kk
          jj = jj + 4
          c%struct_z1(1)%upper_bound = kk
          jj = jj + 4
          c%struct_z1(1)%size_factor = kk
          jj = jj + 4
          c%struct_z1(1)%size = kk
        end subroutine s1
        subroutine s2(c)
         type(y) :: c
         pointer (jj,kk)
          jj = loc(c%struct_z0_pointer(2))
          c%struct_z1(2)%za_adress = kk
          jj = jj + 4
          c%struct_z1(2)%total_size = kk
          jj = jj + 4
          c%struct_z1(2)%element_num = kk
          jj = jj + 4
          c%struct_z1(2)%lower_bound = kk
          jj = jj + 4
          c%struct_z1(2)%upper_bound = kk
          jj = jj + 4
          c%struct_z1(2)%size_factor = kk
          jj = jj + 4
          c%struct_z1(2)%size = kk
        end subroutine s2
      end
