#include <stdlib.h>
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern void v11 (unsigned short, unsigned int);
extern void (*v12) (unsigned short, unsigned int);
signed short v13 (unsigned char, signed int, signed char);
signed short (*v14) (unsigned char, signed int, signed char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
signed short v17 (signed char, signed short, unsigned int);
signed short (*v18) (signed char, signed short, unsigned int) = v17;
extern unsigned char v19 (unsigned short, signed short, unsigned short);
extern unsigned char (*v20) (unsigned short, signed short, unsigned short);
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned int v23 (signed short, unsigned char);
extern unsigned int (*v24) (signed short, unsigned char);
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v72 = 5;
unsigned char v71 = 7;
unsigned short v70 = 1;

signed int v29 (void)
{
{
for (;;) {
unsigned short v75 = 6;
signed char v74 = 0;
unsigned int v73 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v76, signed short v77, unsigned int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = 3;
unsigned int v80 = 6U;
signed short v79 = -4;
trace++;
switch (trace)
{
case 5: 
{
signed char v82;
signed short v83;
unsigned int v84;
signed short v85;
v82 = v76 + -4;
v83 = v77 + -4;
v84 = v78 - v78;
v85 = v17 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
{
signed char v86;
signed short v87;
unsigned int v88;
signed short v89;
v86 = v76 + 0;
v87 = 3 - v79;
v88 = v80 - v80;
v89 = v17 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 7: 
{
signed char v90;
signed short v91;
unsigned int v92;
signed short v93;
v90 = -4 - v76;
v91 = 1 + -4;
v92 = v80 - v80;
v93 = v17 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 8: 
{
signed char v94;
signed short v95;
unsigned int v96;
signed short v97;
v94 = 3 + 3;
v95 = v79 - v79;
v96 = v78 - v78;
v97 = v17 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 9: 
return v79;
case 10: 
return v79;
case 11: 
return -3;
case 12: 
return v79;
case 13: 
return v79;
default: abort ();
}
}
}
}

signed short v13 (unsigned char v98, signed int v99, signed char v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -4;
unsigned int v102 = 1U;
unsigned char v101 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = 2;
unsigned short v106 = 5;
signed char v105 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
