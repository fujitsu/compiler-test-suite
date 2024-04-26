program main
 character(len=5) :: ch1='cab',ch2='fast'
 associate(a=>trim(ch2)//'run'//trim(ch1))
  if(a == 'fastruncab') print*,'pass'
 end associate
end
