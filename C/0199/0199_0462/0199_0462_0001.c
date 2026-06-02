#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed char v5 (unsigned short, unsigned short, signed int);
extern signed char (*v6) (unsigned short, unsigned short, signed int);
extern unsigned short v7 (signed short, signed short, signed char, signed int);
extern unsigned short (*v8) (signed short, signed short, signed char, signed int);
extern signed char v9 (unsigned int, signed int);
extern signed char (*v10) (unsigned int, signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern void v21 (unsigned int, signed short, signed short, signed int);
extern void (*v22) (unsigned int, signed short, signed short, signed int);
unsigned char v23 (signed short, signed char, signed char);
unsigned char (*v24) (signed short, signed char, signed char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
void v27 (signed int, signed int);
void (*v28) (signed int, signed int) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = -3;
signed short v62 = 1;
unsigned short v61 = 7;

void v27 (signed int v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -3;
signed int v67 = -1;
signed int v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v69, signed char v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 0;
unsigned int v73 = 7U;
signed char v72 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v75;
signed short v76;
signed short v77;
signed int v78;
v75 = 6U - v73;
v76 = v69 - v74;
v77 = v74 + v74;
v78 = -3 - -1;
v21 (v75, v76, v77, v78);
}
break;
case 10: 
{
unsigned int v79;
signed short v80;
signed short v81;
signed int v82;
v79 = v73 + 7U;
v80 = v74 - v69;
v81 = v74 - v74;
v82 = -4 + 3;
v21 (v79, v80, v81, v82);
}
break;
case 12: 
return 1;
case 14: 
return 7;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v85 = 2;
signed char v84 = 0;
unsigned char v83 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v86;
v86 = v29 ();
history[history_index++] = (int)v86;
}
break;
case 6: 
{
unsigned int v87;
signed short v88;
signed short v89;
signed int v90;
v87 = 3U + 1U;
v88 = 0 + 1;
v89 = -3 - 2;
v90 = 1 + 0;
v21 (v87, v88, v89, v90);
}
break;
case 16: 
return 1U;
default: abort ();
}
}
}
}
