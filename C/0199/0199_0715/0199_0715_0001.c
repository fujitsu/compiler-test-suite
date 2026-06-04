#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (signed char, unsigned char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char, unsigned char);
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
unsigned short v11 (signed int, unsigned char, unsigned char);
unsigned short (*v12) (signed int, unsigned char, unsigned char) = v11;
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern signed short v15 (unsigned char, unsigned char, signed int, signed char);
extern signed short (*v16) (unsigned char, unsigned char, signed int, signed char);
extern signed int v17 (signed short, unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (signed short, unsigned char, unsigned char, unsigned int);
extern signed short v19 (unsigned short, signed int, unsigned short);
extern signed short (*v20) (unsigned short, signed int, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
signed int v27 (signed char, unsigned int, signed short, signed short);
signed int (*v28) (signed char, unsigned int, signed short, signed short) = v27;
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = -3;
signed char v60 = 3;
unsigned int v59 = 0U;

signed short v29 (void)
{
{
for (;;) {
signed char v64 = -4;
signed short v63 = -4;
signed int v62 = -4;
trace++;
switch (trace)
{
case 9: 
return v63;
default: abort ();
}
}
}
}

signed int v27 (signed char v65, unsigned int v66, signed short v67, signed short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 7;
signed short v70 = 3;
signed char v69 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (signed int v72, unsigned char v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -1;
unsigned int v76 = 6U;
signed int v75 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed short v80 = 1;
unsigned int v79 = 5U;
unsigned short v78 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v81;
unsigned char v82;
unsigned char v83;
unsigned int v84;
signed int v85;
v81 = v80 - v80;
v82 = 7 - 3;
v83 = 5 + 2;
v84 = v79 - v79;
v85 = v17 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
{
unsigned char v86;
unsigned char v87;
signed int v88;
signed char v89;
signed short v90;
v86 = 0 + 7;
v87 = 5 + 1;
v88 = -1 + -3;
v89 = -2 - 1;
v90 = v15 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 14: 
return v80;
default: abort ();
}
}
}
}
