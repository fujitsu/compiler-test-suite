module real_def_mod

  implicit none
  integer,parameter   :: sp=8

end module real_def_mod

module pinl_def_mod
  use real_def_mod
  implicit none

  integer      ::&
       &  n     ,&
       & m      ,&
       & p      ,&
       & pl     ,&
       & pu     ,&
       & n_Nc   ,&
       & n_N2LDU,&
       & n_N2L

  integer      ,allocatable :: icntl(:),xluidx(:)
  real(kind=sp),allocatable :: rcntl(:),xlu(:)

end module pinl_def_mod

module mysparselib_def_mod
  use real_def_mod
  implicit none

  type Smatrix
     integer      ,pointer    ::&
          & i(:),&
          & j(:),&
          & ip(:)
     real(kind=sp),pointer    ::&
          & z(:)
  end type Smatrix

end module mysparselib_def_mod

module mySparseLib_mod
  use mysparselib_def_mod

  implicit none

contains

  subroutine Sallocate(A,n)
    integer,intent(in)          :: n
    type(Smatrix),intent(inout) :: A
    integer :: st_A
    allocate(A%i(n),A%j(n),A%z(n),stat=st_A)
    if(st_A /= 0) write(99,*) 'Warning(Sallocate): stat /= 0'
    return
  end subroutine Sallocate

  subroutine Sdeallocate(A)
    type(Smatrix),intent(inout) :: A
    deallocate(A%i)
    deallocate(A%j)
    deallocate(A%z)
    return
  end subroutine Sdeallocate

  subroutine Status_Smatrix(A,flag)
    logical      ,intent(in),optional :: flag
    type(Smatrix),intent(in) :: A
    if(Present(flag) .and. flag)then
       write(99,*) 'Ai: ',associated(A%i)
       write(99,*) 'Aj: ',associated(A%j) 
       write(99,*) 'Az: ',associated(A%z)
       write(99,*) 'Aip:',associated(A%ip)
    else
       if(associated(A%i))then
          write(99,*) 'Ai: ',associated(A%i),'size:',Size(A%i)
       else
          write(99,*) 'Ai: ',associated(A%i)
       endif
       if(associated(A%j))then
          write(99,*) 'Aj: ',associated(A%j),'size:',Size(A%j)
       else
          write(99,*) 'Aj: ',associated(A%j)
       endif
       if(associated(A%z))then
          write(99,*) 'Az: ',associated(A%z),'size:',Size(A%z)
       else
          write(99,*) 'Az: ',associated(A%z)
       endif
       if(associated(A%ip))then
          write(99,*) 'Aip:',associated(A%ip),'size:',Size(A%ip)
       else
          write(99,*) 'Aip:',associated(A%ip)
       endif
    endif
    return
  end subroutine Status_Smatrix

end module mySparseLib_mod

module test_d_def_mod
  use mysparseLib_def_mod
  implicit none

  type Output
     real(kind=sp)            :: f
     real(kind=sp),pointer    :: g(:),c(:)
     type(Smatrix)            :: A,H
  end type Output
  integer :: up,outt

end module test_d_def_mod

module eval_def_mod

  use pinl_def_mod,only:n,m,p,n_Nc,n_N2LDU
  use test_d_def_mod
  use MySparseLib_mod
  implicit none
end module eval_def_mod

module eval_mod
  use eval_def_mod
  implicit none

contains

  function eval74(x,lambda) result(O)
    intrinsic Present

    type(Output)                      :: O
    real(kind=sp),intent(in)          :: x(:)
    real(kind=sp),intent(in),optional :: lambda(:)

    integer                   :: st_A,st_H
    real(kind=sp),allocatable :: lam(:)

    write(99,*) 'Eval74: Before allocate'
    call status_Output(O,.true.)
    allocate(O%c(m+p),O%g(n))
    call Sallocate(O%A,n_Nc)
    call Sallocate(O%H,n_N2LDU)
    write(99,*) 'Eval74: After allocate'
    call status_Output(O,.true.)
    write(99,*) 'Eval74: Before the end of eval74'   
    call status_Output(O,.true.)
    return
  end function eval74

  subroutine status_Output(O,flag)
    logical     ,intent(in),optional :: flag
    type(Output),intent(in)          :: O
    logical :: ff
    if(Present(flag) .and. flag)then
       write(99,*) 'c:',associated(O%c)
       write(99,*) 'g:',associated(O%g)
       write(99,*)'values of O%A'
       call status_Smatrix(O%A,flag)
       write(99,*)'values of O%H'
       call status_Smatrix(O%H,flag)
    else
       write(99,*) 'c:',associated(O%c),'size:',Size(O%c)
       write(99,*) 'g:',associated(O%g),'size:',Size(O%g)
       write(99,*)'values of O%A'
       call status_Smatrix(O%A)
       write(99,*)'values of O%H'
       call status_Smatrix(O%H)
    endif
  end subroutine status_Output

end module eval_mod

module test_d_mod

  use test_d_def_mod
  use MySparseLib_mod
  use pinl_def_mod,only:n,m,p,n_Nc,n_N2LDU

  implicit none

contains

  subroutine Test_d(eval,x0,E_A,E_H)

    intrinsic Abs,Random_Number,Size

    interface
       function eval(x,lambda) result(O)
         use eval_def_mod
         type(Output)                      :: O
         real(kind=sp),intent(in)          :: x(:)
         real(kind=sp),intent(in),optional :: lambda(:)
       end function eval
    end interface

    real(kind=sp),intent(in)           :: x0(:)
    type(Smatrix),intent(out),optional :: E_A,E_H

    real(kind=sp),parameter      :: delta=1e-5_sp
    real(kind=sp),dimension(n)   :: x1,p_x
    real(kind=sp),dimension(m+p) :: lambda
    type(Output)               :: O,O1

    call Random_Number(p_x)
    call Random_Number(lambda)
    x1=x0 + delta*p_x
    write(99,*) 'Begening of the test_d'
    write(99,*) 'before to allocate O in test_d'
    call status_output(O,.true.)
    write(99,*) 'Allocating O'
    call charge(O)
    write(99,*) 'After to allocate O in test_d'  
    call status_output(O,.true.) 
    write(99,*) 'Allocating O1'
    write(99,*) 'before to allocate O1 in test_d'
    call status_output(O,.true.)
    call charge(O1)
    write(99,*) 'After to allocate O in test_d'  
    call status_output(O,.true.) 
    write(99,*) 'calling Eval in x0'
    O = eval(x0,lambda)
    write(99,*) 'calling Eval in x1'
    O1= eval(x1,lambda)
    call decharge(O)
    call decharge(O1)
    return

  contains

    subroutine charge(O)
      type(Output),intent(inout) :: O
      integer :: st_c,st_g
      allocate(O%c(m+p),stat=st_c)
      allocate(O%g(n),stat=st_g)
      write(99,*) 'Inf. in charge'
      if(st_c /= 0) write(99,*) 'Warning(charge): st_c /= 0'
      if(st_g /= 0) write(99,*) 'Warning(charge): st_g /= 0'
      call Sallocate(O%A,n_Nc)
      call Sallocate(O%H,n_N2LDU)
      write(99,*) 'charge: Status de A'
      call Status_Smatrix(O%A,.true.)
      write(99,*) 'charge: Status de H'
      call Status_Smatrix(O%H,.true.)
    end subroutine charge

    subroutine decharge(O)
      type(Output),intent(inout) :: O
      deallocate(O%c,O%g)
      call Sdeallocate(O%A)
      call Sdeallocate(O%H)
    end subroutine decharge

    subroutine status_Output(O,flag)
      logical     ,intent(in),optional :: flag
      type(Output),intent(in)          :: O
      logical :: ff
      write(99,*)'values of O%A'
      if(Present(flag) .and. flag)then
         write(99,*) 'c:',associated(O%c)
         write(99,*) 'g:',associated(O%g)
         write(99,*)'values of O%A'
         call status_Smatrix(O%A,flag)
         write(99,*)'values of O%H'
         call status_Smatrix(O%H,flag)
      else
         write(99,*) 'c:',associated(O%c),'size:',Size(O%c)
         write(99,*) 'g:',associated(O%g),'size:',Size(O%g)
         write(99,*)'values of O%A'
         call Status_Smatrix(O%A)
         write(99,*)'values of O%H'
         call Status_Smatrix(O%H)
      endif
    end subroutine status_Output

  end subroutine test_d

end module test_d_mod

  program main
    use real_def_mod

    use eval_mod
    use test_d_def_mod,only : up,outt 
    use test_d_mod

    implicit none

    real(kind=sp),allocatable :: x0(:)

    up  =7
    outt=1
    write(up,'(/a10/)')'PROB.:hs74'
    call LoadingData() 
    call Test_d(eval74,x0)
    deallocate(x0) 
    close(up)

    print *,'pass'

  contains

    subroutine LoadingData()

      use pinl_def_mod,only : n,m,p,pl,pu,n_Nc,n_N2L,n_N2LDU,xlu,xluidx
      intrinsic Index
      real(kind=sp),allocatable,dimension(:) :: v
      integer                                :: i,upin

      upin=5
      read(upin,*) pl,pu,p,m,n,n_Nc,n_N2L,n_N2LDU
      allocate (v(pl+pu+p+p+m+n),xlu(2*n),xluidx(n))
      read(upin,*) (v(pl+pu+p+p+m+i),xlu(i),xlu(n+i),xluidx(i),i=1,n)
      close(upin)
      deallocate(xlu,xluidx)
      allocate(x0(n))
      x0=v(pl+pu+p+p+m+1:pl+pu+p+p+m+n)
      deallocate(v)
      return
    end subroutine LoadingData

  end program main
