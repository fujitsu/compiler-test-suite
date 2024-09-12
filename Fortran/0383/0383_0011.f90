integer ,parameter :: kkk=size([ character(12)     :: '' ])+1
integer ,parameter :: lll=size([                      '' ])+1
if (kkk .ne. 2) call errtra
if (lll .ne. 2) call errtra
print *,'pass '
end
