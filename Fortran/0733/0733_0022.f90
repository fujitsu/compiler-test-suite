integer::i=0,j=2,jj=3
character ::z='m'
select case(j+jj)
case  (7:5)
 i=1
end select
if (i/=0)print *,'error-1'
select case(z//z)
case  ('zz':'mm')
 i=2
end select
if (i/=0)print *,'error-2'
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
