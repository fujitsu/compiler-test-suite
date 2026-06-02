      save
      type str_tag
        sequence
        integer*4::i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer error,fun_do,fun_do_while
      error = 0
      error=fun_do(str_a)+fun_do_while(str_a)
      select case(error .eq. 0)
        case(.true.)
         write(6,*) '*** ok ***'
        case(.false.)
         write(6,*) '*** ng ***'
      end select

      stop
      end
C
      integer function fun_do(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer fun_do_cycle,fun_do_exit
      fun_do=fun_do_cycle(str_a)+fun_do_exit(str_a)
      end
C
      integer function fun_do_cycle(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer fun_do_cycle_1,fun_do_cycle_2,fun_do_cycle_3
      str_a%i04_a=0
      fun_do_cycle=fun_do_cycle_1(str_a)
     +            +fun_do_cycle_2(str_a)
     +            +fun_do_cycle_3(str_a)
      end
C
      integer function fun_do_cycle_1(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      do 10 j=1,10
        do 10 i=1,j
          cycle
 10   str_a%i04_a=i
      fun_do_cycle_1=check(str_a%i04_a,0)
      end
C
      integer function fun_do_cycle_2(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      do 10 j=1,10
        do 20 i=1,j
          cycle
 20     str_a%i04_a=i
 10   str_a%i04_a=str_a%i04_a+j
      fun_do_cycle_2=check(str_a%i04_a,55)
      end
C
      integer function fun_do_cycle_3(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      outer_1:do j=1,10
        inner_1:do i=1,j
          cycle
          str_a%i04_a=i-1
        end do inner_1
        str_a%i04_a=str_a%i04_a-j
      end do outer_1
      outer_2:do j=1,10
        inner_2:do i=1,j
          cycle outer_2
          str_a%i04_a=str_a%i04_a+i
        end do inner_2
        str_a%i04_a=str_a%i04_a+j
      end do outer_2
      fun_do_cycle_3=check(str_a%i04_a,0)
      end
C
      integer function fun_do_exit(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer fun_do_exit_1,fun_do_exit_2,fun_do_exit_3
      str_a%i04_a=0
      fun_do_exit=fun_do_exit_1(str_a)
     +           +fun_do_exit_2(str_a)
     +           +fun_do_exit_3(str_a)
      end
C
      integer function fun_do_exit_1(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      do 10 j=1,10
        do 10 i=1,j
          exit
 10   str_a%i04_a=i
      fun_do_exit_1=check(str_a%i04_a,0)
      end
C
      integer function fun_do_exit_2(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      do 10 j=1,10
        do 20 i=1,j
          exit
 20     str_a%i04_a=i
 10   str_a%i04_a=str_a%i04_a+j
      fun_do_exit_2=check(str_a%i04_a,55)
      end
C
      integer function fun_do_exit_3(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      outer_1:do j=1,10
        inner_1:do i=1,j
          exit
          str_a%i04_a=i-1
        end do inner_1
        str_a%i04_a=str_a%i04_a-j
      end do outer_1
      outer_2:do j=1,10
        inner_2:do i=1,j
          exit outer_2
          str_a%i04_a=str_a%i04_a+i
        end do inner_2
        str_a%i04_a=str_a%i04_a+j
      end do outer_2
      fun_do_exit_3=check(str_a%i04_a,0)
      end
C
      integer function fun_do_while(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer fun_do_while_cycle,fun_do_while_exit
      fun_do_while=fun_do_while_cycle(str_a)+fun_do_while_exit(str_a)
      end
C
      integer function fun_do_while_cycle(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer fun_do_while_cycle_1,fun_do_while_cycle_2
     +       ,fun_do_while_cycle_3
      str_a%i04_b=0
      fun_do_while_cycle=fun_do_while_cycle_1(str_a)
     +                  +fun_do_while_cycle_2(str_a)
     +                  +fun_do_while_cycle_3(str_a)
      end
C
      integer function fun_do_while_cycle_1(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      j=1
      do 10 while(j.le.10)
        j=j+1
        i=1
        do 10 while(i.lt.j)
          i=i+1
          cycle
 10   str_a%i04_b=i
      fun_do_while_cycle_1=check(str_a%i04_b,0)
      end
C
      integer function fun_do_while_cycle_2(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      j=1
      do 10 while(j.le.10)
        j=j+1
        i=1
        do 20 while(i.lt.j)
          i=i+1
          cycle
 20     str_a%i04_b=i
 10   str_a%i04_b=str_a%i04_b+j-1
      fun_do_while_cycle_2=check(str_a%i04_b,55)
      end
C
      integer function fun_do_while_cycle_3(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      j=1
      outer_1:do while(j.le.10)
        j=j+1
        i=1
        inner_1:do while(i.lt.j)
          i=i+1
          cycle
          str_a%i04_b=i-2
        end do inner_1
        str_a%i04_b=str_a%i04_b-j-1
      end do outer_1
      j=1
      outer_2:do while(j.le.10)
        j=j+1
        i=1
        inner_2:do while(i.lt.j)
          i=i+1
          cycle outer_2
          str_a%i04_b=str_a%i04_b+i-1
        end do inner_2
        str_a%i04_b=str_a%i04_b+j-1
      end do outer_2
      fun_do_while_cycle_3=check(str_a%i04_b,0)
      end
C
      integer function fun_do_while_exit(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer fun_do_while_exit_1,fun_do_while_exit_2
     +       ,fun_do_while_exit_3
      str_a%i04_b=0
      fun_do_while_exit=fun_do_while_exit_1(str_a)
     +                 +fun_do_while_exit_2(str_a)
     +                 +fun_do_while_exit_3(str_a)
      end
C
      integer function fun_do_while_exit_1(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      j=1
      do 10 while(j.le.10)
        j=j+1
        i=1
        do 10 while(i.lt.j)
          i=i+1
          exit
 10   str_a%i04_b=i-1
      fun_do_while_exit_1=check(str_a%i04_b,0)
      end
C
      integer function fun_do_while_exit_2(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      j=1
      do 10 while(j.le.10)
        j=j+1
        i=1
        do 20 while(i.lt.j)
          i=i+1
          exit
 20     str_a%i04_b=i-1
 10   str_a%i04_b=str_a%i04_b+j-1
      fun_do_while_exit_2=check(str_a%i04_b,55)
      end
C
      integer function fun_do_while_exit_3(str_a)
      type str_tag
        sequence
        integer*4 i04_a(3),i04_b(3),i04_c(3)
      end type
      type(str_tag) str_a
      integer check
      j=1
      outer_1:do while(j.le.10)
        j=j+1
        i=1
        inner_1:do while(i.lt.j)
          i=i+1
          exit
          str_a%i04_b=i-2
        end do inner_1
        str_a%i04_b=str_a%i04_b-j-1
      end do outer_1
      j=1
      outer_2:do while(j.le.10)
        j=j+1
        i=1
        inner_2:do while(i.lt.j)
          i=i+1
          exit outer_2
          str_a%i04_b=str_a%i04_b+i-1
        end do inner_2
        str_a%i04_b=str_a%i04_b+j-1
      end do outer_2
      fun_do_while_exit_3=check(str_a%i04_b,0)
      end
C
      integer function check(i04,rslt)
      integer i04(3),rslt
      check=0
      error=0
      do i=1,3
        if(i04(i) .ne. rslt) error=error+1
      end do
      end
