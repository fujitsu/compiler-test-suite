integer::i=0,j=2,jj=3
character ::z='m'
select case(j+jj)
case  (7:5)
 i=1
case  (1)
 i=5
end select
if (i/=0)print *,'error-1'
j=-2
select case(j+jj)
case  (7:5)
 i=1
case  (1)
 i=5
end select
if (i/=5)print *,'error-4'
j=2
select case(j+jj)
case  (7:5)
 i=1
case  (5)
 i=7
end select
if (i/=7)print *,'error-6'
i=5
j=2
select case(j+jj)
case  (7:5)
 i=1
case  (5:8)
 i=8
end select
if (i/=8)print *,'error-7'
select case(z//z)
case  ('zz':'mm')
 i=2
case  ('aa')
 i=6
end select
if (i/=8)print *,'error-2'
z='a'
select case(z//z)
case  ('zz':'mm')
 i=2
case  ('aa')
 i=6
end select
if (i/=6)print *,'error-2'
select case(j+jj)
end select
select case(j+jj)
case default
end select
select case(j+jj)
case default
i=2
end select
if (i/=2)print *,'error-3'
select case(z//z)
end select
select case(z//z)
case default
end select
select case(z//z)
case default
i=3
end select
if (i/=3)print *,'error-3'
print *,'pass'
end
