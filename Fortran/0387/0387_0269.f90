intrinsic idim

type ty1
 procedure(idim),nopass,pointer :: pip
end type
type (ty1) :: t1
procedure(idim),pointer :: pip

pip => idim

if (pip(1,2).ne.idim(1,2)) print *,'fail'

t1 = ty1(pip)

if (t1%pip(1,2).ne.idim(1,2)) print *,'fail'

t1 = ty1(idim)

if (t1%pip(1,2).ne.idim(1,2)) print *,'fail'

t1 = ty1(t1%pip)

if (t1%pip(1,2).ne.idim(1,2)) print *,'fail'

call sub(pip)

if (pip(1,2).ne.idim(1,2)) print *,'fail'

print *,'pass'

contains

 subroutine sub(pip)
  procedure(idim),pointer :: pip
  pip => idim
 end subroutine

end
