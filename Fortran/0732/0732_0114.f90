module descsub
  character (len=5),target, dimension(4) :: pc
  character (len=1),target, dimension(4,4,4,4,1,1,1) :: px
contains
  function foo() result(b)
    character (len=5), dimension(:), pointer :: b
    b => pc(1:3:2)
  end function
  function foox(i) result(b)
    character (len=i), dimension(:), pointer :: b
    b => pc(2:4:2)
  end function
  function fooy() result(b)
    character (len=1), dimension(:,:,:,:,:,:,:), pointer :: b
    b => px(2:4:2,2:4:2,2:4:2,2:4:2,1:1,1:1,1:1)
  end function
end module descsub

program main
  use descsub
  character*20 c
  character*1 cc(16)
  pc(1)= 'one'
  pc(2)= 'two'
  pc(3)= 'three'
  pc(4)= 'four'
 c(11:)=''
 px=reshape((/('1','2','3','4',ix=1,4*4*4)/),(/4,4,4,4,1,1,1/))
  read(foo(),'(a,/,a)') c(1:5),c(6:10)
if (index(c,'one')==0)write(6,*) "NG"
if (index(c,'three')==0)write(6,*) "NG"
  read(foox(5),'(a,/,a)') c(1:5),c(6:10)
if (index(c,'two')==0)write(6,*) "NG"
if (index(c,'four')==0)write(6,*) "NG"
  read(fooy(),'(15(a,/),a)') cc
if (any(cc/=(/px(2:4:2,2:4:2,2:4:2,2:4:2,1:1,1:1,1:1)/)))write(6,*) "NG"
print *,'pass'
end
