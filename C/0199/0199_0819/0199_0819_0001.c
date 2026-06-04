#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern void v7 (unsigned short, signed int, unsigned short);
extern void (*v8) (unsigned short, signed int, unsigned short);
unsigned short v9 (signed int, unsigned short);
unsigned short (*v10) (signed int, unsigned short) = v9;
unsigned short v11 (unsigned short, unsigned int);
unsigned short (*v12) (unsigned short, unsigned int) = v11;
extern signed short v13 (signed short, signed short, signed char, signed int);
extern signed short (*v14) (signed short, signed short, signed char, signed int);
extern signed char v15 (signed char, signed int, signed short, signed char);
extern signed char (*v16) (signed char, signed int, signed short, signed char);
extern unsigned char v17 (unsigned int, signed int, signed short, signed char);
extern unsigned char (*v18) (unsigned int, signed int, signed short, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
extern unsigned char v25 (signed int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (signed int, unsigned int, signed short, unsigned char);
signed short v27 (unsigned int, unsigned char, unsigned int, signed short);
signed short (*v28) (unsigned int, unsigned char, unsigned int, signed short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 4U;
unsigned short v61 = 4;
unsigned int v60 = 2U;

signed short v27 (unsigned int v63, unsigned char v64, unsigned int v65, signed short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 0U;
unsigned char v68 = 0;
signed char v67 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v70;
unsigned char v71;
unsigned int v72;
signed short v73;
signed short v74;
v70 = v65 + 4U;
v71 = 1 + v64;
v72 = 6U + 1U;
v73 = 3 - 3;
v74 = v27 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 5: 
{
unsigned int v75;
unsigned char v76;
unsigned int v77;
signed short v78;
signed short v79;
v75 = v63 - v65;
v76 = v64 + v64;
v77 = v65 + v65;
v78 = v66 + -3;
v79 = v27 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 6: 
return v66;
case 7: 
{
unsigned int v80;
unsigned char v81;
unsigned int v82;
signed short v83;
signed short v84;
v80 = v63 - v63;
v81 = v68 - v64;
v82 = v63 + v63;
v83 = v66 - -2;
v84 = v27 (v80, v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 8: 
{
unsigned int v85;
unsigned char v86;
unsigned int v87;
signed short v88;
signed short v89;
v85 = 3U - 7U;
v86 = 2 - 7;
v87 = v69 + v65;
v88 = -4 + 1;
v89 = v27 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 9: 
return -1;
case 10: 
return v66;
case 11: 
return -3;
case 12: 
return v66;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v90, unsigned int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -1;
unsigned short v93 = 7;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v95, unsigned short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -1;
signed char v98 = -4;
unsigned char v97 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
