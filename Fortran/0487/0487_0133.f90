1 module m1
         procedure(mfun),pointer :: p1
         procedure(p1),pointer :: p2
         contains
         function mfun(d1)
         integer :: mfun,d1
         mfun = d1 + 2
         end function
         end
        use m1
        procedure(p1)         :: p3
        procedure(p1),pointer :: p4
        procedure(mfun)         :: p5
        procedure(mfun),pointer :: p6
p1=>mfun
p2=>p1
if (p1(1)/=3) print *,105
if (p2(1)/=3) print *,106
if (p3(1)/=3) print *,101
p4=>p3
if (p4(1)/=3) print *,102
p6=>p4
if (p5(1)/=3) print *,103
if (p6(1)/=3) print *,104
print *,'pass'
        end
         function p1  (d1) result(r)
         entry p2(d1) result(r)
         entry p3(d1) result(r)
         entry p5(d1) result(r)
         integer :: r,d1
         r = d1 + 2
         end function
