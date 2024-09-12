subroutine s
integer,target::a1(1)=1
call s1(a1)
contains

subroutine s1(a1)
integer,pointer,contiguous::p(:,:)
integer,pointer           ::x(:,:)
integer,pointer,contiguous::p1(:)
integer,pointer           ::p2(:)
integer,contiguous,target::a1(-1:)
allocate(p2(-1:-1),source=1)
p(-1:-1,0:0)=>p2(-1:-1)
if (p(-1,0)/=1) print *,111

allocate(p2(1:1),source=1)
p(1:1,1:1)=>p2(1:1)
if (p(1,1)/=1) print *,112

p(1:1,1:1)=>p2(1:)
if (p(1,1)/=1) print *,114

p(1:1,1:1)=>p2(:1)
if (p(1,1)/=1) print *,116

p(1:1,1:1)=>p2(:)
if (p(1,1)/=1) print *,118

allocate(p1(-1:-1),source=1)
p(-1:-1,0:0)=>p1(-1:-1)
if (p(-1,0)/=1) print *,101

allocate(p1(1:1),source=1)
p(1:1,1:1)=>p1(1:1)
if (p(1,1)/=1) print *,102

p(-1:-1,0:0)=>a1(-1:-1)
if (p(-1,0)/=1) print *,103

p(1:1,1:1)=>p1(1:)
if (p(1,1)/=1) print *,104

p(-1:-1,0:0)=>a1(-1:)
if (p(-1,0)/=1) print *,105

p(1:1,1:1)=>p1(:1)
if (p(1,1)/=1) print *,106

p(-1:-1,0:0)=>a1(:-1)
if (p(-1,0)/=1) print *,107

p(1:1,1:1)=>p1(:)
if (p(1,1)/=1) print *,108

p(-1:-1,0:0)=>a1(:)
if (p(-1,0)/=1) print *,109

allocate(p1(-1:-1),source=1)
x(-1:-1,0:0)=>p1(-1:-1)
if (x(-1,0)/=1) print *,201

allocate(p1(1:1),source=1)
x(1:1,1:1)=>p1(1:1)
if (x(1,1)/=1) print *,202

x(-1:-1,0:0)=>a1(-1:-1)
if (x(-1,0)/=1) print *,203
end subroutine
end
call s
print *,'pass'
end
