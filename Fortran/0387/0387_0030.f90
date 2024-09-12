interface
 function func()
  integer :: func(10,10)
 end function
end interface

intrinsic abs
intrinsic idim

procedure(abs),pointer  :: pabs
procedure(idim),pointer :: pidim

integer i,i2(10,10)

pabs=>abs
pidim=>idim

i=pabs(1.0)
i=pidim(1,1)

i2=func()

print *,'pass'

end

function func()
 integer :: func(10,10)
 func=1
end function
