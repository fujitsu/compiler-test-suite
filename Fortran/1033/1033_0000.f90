      program main
       type z0
         integer,allocatable,dimension(:)::za
       end type
       type z1
         integer::za_adress
         integer::total_size  
         integer::element_num
         integer::lower_bound
         integer::upper_bound
         integer::size_factor
         integer::size
       end type
       type y
         type(z0),pointer::struct_z0_pointer
         type(z1)        ::struct_z1
       end type y
       type(y) :: a,b

        allocate(a%struct_z0_pointer)
        allocate(b%struct_z0_pointer)
        allocate(a%struct_z0_pointer%za(55:77))
        allocate(b%struct_z0_pointer%za(555:777))

        a%struct_z0_pointer = b%struct_z0_pointer

        call s(a)
        call s(b)

        if (a%struct_z1%element_num/=b%struct_z1%element_num) print *,'error 3'
        if (a%struct_z1%lower_bound/=b%struct_z1%lower_bound) print *,'error 4'
        if (a%struct_z1%upper_bound/=b%struct_z1%upper_bound) print *,'error 5'
        if (a%struct_z1%size_factor/=b%struct_z1%size_factor) print *,'error 6'
        if (a%struct_z1%size       /=b%struct_z1%size       ) print *,'error 7'
        print *,'pass'
       contains
        subroutine s(c)
         type(y) :: c
         pointer (jj,kk)
          jj = loc(c%struct_z0_pointer)
          c%struct_z1%za_adress = kk
          jj = jj + 4
          c%struct_z1%total_size = kk
          jj = jj + 4
          c%struct_z1%element_num = kk
          jj = jj + 4
          c%struct_z1%lower_bound = kk
          jj = jj + 4
          c%struct_z1%upper_bound = kk
          jj = jj + 4
          c%struct_z1%size_factor = kk
          jj = jj + 4
          c%struct_z1%size = kk
        end subroutine s
      end
