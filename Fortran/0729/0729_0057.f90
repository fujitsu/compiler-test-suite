module A
  private
  interface S; module procedure S_; end interface S
  public S
contains
  subroutine S_ ( I )
    integer I
    write(1,*) I
  end subroutine S_
end module A

module B
  use A
  private
  interface S; module procedure S_; end interface S
  public S
contains
  subroutine S_
    call S ( 10 )
  end subroutine S_
end module B

program P
  use B
  call S
rewind 1
read(1,*) j
if (j/=10)write(6,*) "NG"
print *,'pass'
end program P
