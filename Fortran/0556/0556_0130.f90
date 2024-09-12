program main
 
CLASS (*), POINTER ::  uptr
Character(len=10),target :: ch_trgt
 
uptr => ch_trgt
print*,'pass'
end
