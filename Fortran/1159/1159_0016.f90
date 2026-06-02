      module mod 
integer::n
       contains
       subroutine proc_non()
n=1
       end subroutine
       subroutine proc_r4(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
n=2
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_r8(dummy_arg)             ! 18)
        real(8), intent(in) :: dummy_arg
n=3
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_r16(dummy_arg)             ! 18)
        real(16), intent(in) :: dummy_arg
n=4
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_i4(k)
n=5
write(18,*)k
       end subroutine
       subroutine proc_i8(k)
integer(8)::k
write(18,*)k
n=6
       end subroutine
       subroutine proc_c4(dummy_arg)             ! 18)
        complex(4), intent(in) :: dummy_arg
n=7
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_nonr()
n=11
       end subroutine
       subroutine proc_r4r(dummy_arg)             ! 18)
        real, intent(in) :: dummy_arg
n=12
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_r8r(dummy_arg)             ! 18)
        real(8), intent(in) :: dummy_arg
n=13
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_r16r(dummy_arg)             ! 18)
        real(16), intent(in) :: dummy_arg
n=14
        write(18,*) dummy_arg
       end subroutine
       subroutine proc_i4r(k)
n=15
write(18,*)k
       end subroutine
       subroutine proc_i8r(k)
integer(8)::k
write(18,*)k
n=16
       end subroutine
      end
      
module nod
      use mod
      type  :: ty_1                             ! 1)
       contains
        procedure, nopass :: non=>proc_non         ! 2) 8) 15)
        generic           :: gen_name => non     ! 3) 4) 11)
      end type
      type, extends(ty_1) :: ty_2               ! 5) 6)
       contains
        procedure, nopass :: r4=>proc_r4         ! 7) 8) 
        generic           :: gen_name => r4     ! 3) 4) 11)
      end type
      type, extends(ty_2) :: ty_3               ! 12) 13)
       contains
        procedure, nopass :: r8=>proc_r8         ! 7) 8) 
        generic           :: gen_name => r8     ! 3) 4) 11)
      end type
      type, extends(ty_3) :: ty_4               ! 12) 13)
       contains
        procedure, nopass :: r16=>proc_r16        ! 7) 8) 
        generic           :: gen_name => r16    ! 3) 4) 11)
      end type
      type, extends(ty_4) :: ty_5               ! 12) 13)
       contains
        procedure, nopass :: i4=>proc_i4        ! 7) 8) 
        generic           :: gen_name => i4    ! 3) 4) 11)
      end type
      type, extends(ty_5) :: ty_6               ! 12) 13)
       contains
        procedure, nopass :: i8=>proc_i8        ! 7) 8) 
        generic           :: gen_name => i8   ! 3) 4) 11)
      end type
end
module kmod
use nod
      type, extends(ty_6) :: ty_7               ! 12) 13)
      end type
      type, extends(ty_7) :: ty_8               ! 12) 13)
       contains
        procedure, nopass :: non=>proc_nonr         ! 14) 15)
      end type
      type, extends(ty_8) :: ty_9               ! 12) 13)
       contains
        procedure, nopass :: r4=>proc_r4r         ! 14) 15)
      end type
      type, extends(ty_9) :: ty_a               ! 12) 13)
       contains
        generic           :: gen_name=>c4
        procedure, nopass :: r8=>proc_r8r         ! 14) 15)
        procedure, nopass :: c4=>proc_c4          ! 14) 15)
      end type
      type, extends(ty_a) :: ty_b               ! 12) 13)
       contains
        procedure, nopass :: r16=>proc_r16r         ! 14) 15)
      end type
      type, extends(ty_b) :: ty_c              ! 12) 13)
       contains
        procedure, nopass :: i4=>proc_i4r         ! 14) 15)
      end type
      type, extends(ty_c) :: ty_d               ! 12) 13)
       contains
        procedure, nopass :: i8=>proc_i8r         ! 14) 15)
      end type
end
use kmod
      type(ty_7) :: va2                        ! 16)
      type(ty_d) :: va3                        ! 16)
      type(ty_a) :: va4                        ! 16)
      call va2%gen_name()                    ! 17) 18)
      if (n/=1) print *,200232
      call va2%gen_name(1.0)                    ! 17) 18)
      if (n/=2) print *,200211
      call va2%gen_name(1.0_8)                    ! 17) 18)
      if (n/=3) print *,200212
      call va2%gen_name(1.0_16)                    ! 17) 18)
      if (n/=4) print *,200213
      call va2%gen_name(1)                    ! 17) 18)
      if (n/=5) print *,200214
      call va2%gen_name(1_8)                    ! 17) 18)
      if (n/=6) print *,200215
      call va2%non     ()                    ! 17) 18)
      if (n/=1) print *,200232
      call va2%r4      (1.0)                    ! 17) 18)
      if (n/=2) print *,2002112
      call va2%r8      (1.0_8)                    ! 17) 18)
      if (n/=3) print *,2002122
      call va2%r16     (1.0_16)                    ! 17) 18)
      if (n/=4) print *,2002132
      call va2%i4      (1)                    ! 17) 18)
      if (n/=5) print *,2002142
      call va2%i8      (1_8)                    ! 17) 18)
      if (n/=6) print *,2002152

      call va3%gen_name()                    ! 17) 18)
      if (n/=11) print *,9200232
      call va3%gen_name(1.0)                    ! 17) 18)
      if (n/=12) print *,9200211
      call va3%gen_name(1.0_8)                    ! 17) 18)
      if (n/=13) print *,9200212
      call va3%gen_name(1.0_16)                    ! 17) 18)
      if (n/=14) print *,9200213
      call va3%gen_name(1)                    ! 17) 18)
      if (n/=15) print *,9200214
      call va3%gen_name(1_8)                    ! 17) 18)
      if (n/=16) print *,9200215
      call va3%gen_name((1.,1))                    ! 17) 18)
      if (n/=7 ) print *,9200215
      call va3%non     ()                    ! 17) 18)
      if (n/=11) print *,9200232
      call va3%r4      (1.0)                    ! 17) 18)
      if (n/=12) print *,92002112
      call va3%r8      (1.0_8)                    ! 17) 18)
      if (n/=13) print *,92002122
      call va3%r16     (1.0_16)                    ! 17) 18)
      if (n/=14) print *,92002132
      call va3%i4      (1)                    ! 17) 18)
      if (n/=15) print *,92002142
      call va3%i8      (1_8)                    ! 17) 18)
      if (n/=16) print *,92002152
      call va3%c4      ((1.,1))                    ! 17) 18)
      if (n/=7 ) print *,92002153

      call va4%gen_name()                    ! 17) 18)
      if (n/=11) print *,9200232
      call va4%gen_name(1.0)                    ! 17) 18)
      if (n/=12) print *,9200211
      call va4%gen_name(1.0_8)                    ! 17) 18)
      if (n/=13) print *,9200212
      call va4%gen_name(1.0_16)                    ! 17) 18)
      if (n/= 4) print *,9200213
      call va4%gen_name(1)                    ! 17) 18)
      if (n/= 5) print *,9200214
      call va4%gen_name(1_8)                    ! 17) 18)
      if (n/= 6) print *,9200215
      call va4%gen_name((1.,1))                    ! 17) 18)
      if (n/=7 ) print *,9200215
      call va4%non     ()                    ! 17) 18)
      if (n/=11) print *,9200232
      call va4%r4      (1.0)                    ! 17) 18)
      if (n/=12) print *,92002112
      call va3%r8      (1.0_8)                    ! 17) 18)
      if (n/=13) print *,92002122
      call va3%r16     (1.0_16)                    ! 17) 18)
      if (n/=14) print *,92002132
      call va3%i4      (1)                    ! 17) 18)
      if (n/=15) print *,92002142
      call va3%i8      (1_8)                    ! 17) 18)
      if (n/=16) print *,92002152
      call va3%c4      ((1.,1))                    ! 17) 18)
      if (n/=7 ) print *,920021531

      print *,'sngg818n : pass'
      end 
