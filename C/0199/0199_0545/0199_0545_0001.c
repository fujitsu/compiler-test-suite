#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
unsigned int v3 (unsigned short, unsigned int);
unsigned int (*v4) (unsigned short, unsigned int) = v3;
signed short v5 (signed short, unsigned char, signed short);
signed short (*v6) (signed short, unsigned char, signed short) = v5;
unsigned int v7 (signed char, signed char, unsigned int, unsigned char);
unsigned int (*v8) (signed char, signed char, unsigned int, unsigned char) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char, signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, signed char, unsigned short, unsigned char);
extern unsigned char v13 (signed char, unsigned int);
extern unsigned char (*v14) (signed char, unsigned int);
extern signed char v15 (signed short, signed int, unsigned short);
extern signed char (*v16) (signed short, signed int, unsigned short);
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
extern signed int v19 (unsigned short, signed char, signed int, signed int);
extern signed int (*v20) (unsigned short, signed char, signed int, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned char v23 (signed short, unsigned char, unsigned char, signed int);
extern unsigned char (*v24) (signed short, unsigned char, unsigned char, signed int);
extern unsigned char v25 (unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, signed int, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned char, signed char);
extern void (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = 1;
unsigned short v53 = 2;
signed int v52 = -2;

unsigned int v7 (signed char v55, signed char v56, unsigned int v57, unsigned char v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 2;
signed char v60 = 3;
unsigned char v59 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v62, unsigned char v63, signed short v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -4;
unsigned int v66 = 5U;
signed int v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 5;
signed short v71 = 2;
unsigned short v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed short v75 = 2;
signed int v74 = 0;
unsigned char v73 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v76;
v76 = v21 ();
history[history_index++] = (int)v76;
}
break;
case 2: 
{
unsigned short v77;
signed char v78;
signed int v79;
signed int v80;
signed int v81;
v77 = 0 + 1;
v78 = -4 + 2;
v79 = v74 - v74;
v80 = v74 + -1;
v81 = v19 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 4: 
{
signed int v82;
signed short v83;
v82 = v74 + -2;
v83 = v17 (v82);
history[history_index++] = (int)v83;
}
break;
case 8: 
{
signed char v84;
signed char v85;
unsigned short v86;
unsigned char v87;
signed short v88;
v84 = 1 + 2;
v85 = -1 + 2;
v86 = 7 + 5;
v87 = 5 + v73;
v88 = v11 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
