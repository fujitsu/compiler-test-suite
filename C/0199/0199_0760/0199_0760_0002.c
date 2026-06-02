#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed short v3 (signed int, signed short);
extern signed short (*v4) (signed int, signed short);
unsigned short v5 (signed int, unsigned int, unsigned short, unsigned int);
unsigned short (*v6) (signed int, unsigned int, unsigned short, unsigned int) = v5;
signed char v7 (signed short, signed char, unsigned int, signed char);
signed char (*v8) (signed short, signed char, unsigned int, signed char) = v7;
extern unsigned char v9 (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char (*v10) (unsigned short, signed char, unsigned char, unsigned char);
unsigned char v11 (signed int, signed int);
unsigned char (*v12) (signed int, signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, signed int, signed int);
extern unsigned short (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned char v21 (signed int, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned char, signed int, unsigned int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int);
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v73 = 7;
unsigned short v72 = 7;
signed short v71 = 0;

unsigned char v11 (signed int v74, signed int v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = 3;
unsigned char v77 = 5;
signed short v76 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed short v79, signed char v80, unsigned int v81, signed char v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 4;
unsigned int v84 = 4U;
unsigned short v83 = 7;
trace++;
switch (trace)
{
case 4: 
return v80;
default: abort ();
}
}
}
}

unsigned short v5 (signed int v86, unsigned int v87, unsigned short v88, unsigned int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 4;
unsigned int v91 = 0U;
signed short v90 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned int v95 = 7U;
unsigned char v94 = 3;
unsigned short v93 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v96;
signed char v97;
unsigned char v98;
unsigned char v99;
unsigned char v100;
v96 = 3 - 5;
v97 = 2 - 3;
v98 = v94 - 5;
v99 = 0 - v94;
v100 = v9 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 2: 
{
signed int v101;
v101 = v13 ();
history[history_index++] = (int)v101;
}
break;
case 6: 
{
unsigned char v102;
v102 = v25 ();
history[history_index++] = (int)v102;
}
break;
case 8: 
{
signed int v103;
v103 = v13 ();
history[history_index++] = (int)v103;
}
break;
case 10: 
{
signed char v104;
signed int v105;
signed int v106;
unsigned short v107;
v104 = 3 + 0;
v105 = -2 - 2;
v106 = -3 - 1;
v107 = v15 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 12: 
return;
case 14: 
return;
case 16: 
return;
default: abort ();
}
}
}
}
