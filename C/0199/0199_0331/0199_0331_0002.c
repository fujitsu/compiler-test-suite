#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
unsigned int v3 (signed short, unsigned int);
unsigned int (*v4) (signed short, unsigned int) = v3;
signed short v5 (signed int, signed short);
signed short (*v6) (signed int, signed short) = v5;
extern unsigned char v7 (signed char, signed char);
extern unsigned char (*v8) (signed char, signed char);
extern unsigned int v9 (signed short, unsigned char, signed char, signed char);
extern unsigned int (*v10) (signed short, unsigned char, signed char, signed char);
extern signed int v11 (signed char, signed short, unsigned char, unsigned int);
extern signed int (*v12) (signed char, signed short, unsigned char, unsigned int);
extern unsigned int v13 (unsigned short, signed int);
extern unsigned int (*v14) (unsigned short, signed int);
extern unsigned char v15 (signed char, unsigned char, signed short);
extern unsigned char (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned char v23 (unsigned int);
unsigned char (*v24) (unsigned int) = v23;
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
extern unsigned char v27 (unsigned char, signed char, signed int, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed int, unsigned int);
extern unsigned char v29 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v73 = 1;
signed char v72 = -4;
signed int v71 = -3;

unsigned char v23 (unsigned int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 1;
signed int v76 = 2;
signed short v75 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v78;
unsigned char v79;
unsigned char v80;
unsigned char v81;
v78 = 7U - 0U;
v79 = v77 - 6;
v80 = v77 - v77;
v81 = v29 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 6: 
{
unsigned int v82;
unsigned char v83;
unsigned char v84;
unsigned char v85;
v82 = v74 + 7U;
v83 = v77 + v77;
v84 = 0 - v77;
v85 = v29 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 8: 
{
unsigned int v86;
unsigned char v87;
unsigned char v88;
unsigned char v89;
v86 = 4U - v74;
v87 = v77 - v77;
v88 = 4 - v77;
v89 = v29 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 10: 
{
unsigned int v90;
unsigned char v91;
unsigned char v92;
unsigned char v93;
v90 = v74 - v74;
v91 = 4 + 0;
v92 = 5 - v77;
v93 = v29 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

signed short v5 (signed int v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 4;
signed int v97 = -3;
unsigned int v96 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v99, unsigned int v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 2;
unsigned char v102 = 5;
signed short v101 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v104;
signed int v105;
unsigned int v106;
v104 = 1 + 0;
v105 = -4 - v103;
v106 = v13 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 14: 
return v100;
default: abort ();
}
}
}
}
