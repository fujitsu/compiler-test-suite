parameter (k1=selected_char_kind("default"))
parameter (k2=selected_char_kind("ascii"))
parameter (k3=selected_char_kind("ISO_1064"))
parameter (k4=selected_char_kind("defAult"))
parameter (k5=selected_char_kind("asCii"))
parameter (k6=selected_char_kind("ISo_1064"))
parameter (k7=selected_char_kind("default  "))
parameter (k8=selected_char_kind("ascii    "))
parameter (k9=selected_char_kind("ISO_1064  "))

write(1,*)k1,selected_char_kind("default")
write(1,*)k2,selected_char_kind("ascii")
write(1,*)k3,selected_char_kind("ISO_1064")
write(1,*)k4,selected_char_kind("defAult")
write(1,*)k5,selected_char_kind("asCii")
write(1,*)k6,selected_char_kind("ISo_1064")
write(1,*)k7,selected_char_kind("default  ")
write(1,*)k8,selected_char_kind("ascii    ")
write(1,*)k9,selected_char_kind("ISO_1064  ")

call chk
print *,'pass'
end
subroutine chk
rewind 1
k=1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
read(1,*) k1,k2;if (k1/=k2)print *,k;k=k+1
end
