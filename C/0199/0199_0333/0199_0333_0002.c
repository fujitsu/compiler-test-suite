#include <stdlib.h>
void v1 (unsigned char);
void (*v2) (unsigned char) = v1;
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
extern signed int v5 (signed short, unsigned char, signed char);
extern signed int (*v6) (signed short, unsigned char, signed char);
extern unsigned short v7 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, unsigned char, unsigned int);
unsigned int v9 (signed short, signed int);
unsigned int (*v10) (signed short, signed int) = v9;
extern signed int v11 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned short, signed int, unsigned char);
extern signed short (*v16) (unsigned short, signed int, unsigned char);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned short v23 (signed char);
extern unsigned short (*v24) (signed char);
extern unsigned short v25 (unsigned int, unsigned short, signed int);
extern unsigned short (*v26) (unsigned int, unsigned short, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (unsigned int, signed short);
extern unsigned char (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = -2;
unsigned char v65 = 6;
signed int v64 = 0;

unsigned int v9 (signed short v67, signed int v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 2;
unsigned char v70 = 4;
signed char v69 = 3;
trace++;
switch (trace)
{
case 2: 
return 4U;
case 9: 
return 1U;
default: abort ();
}
}
}
}

void v3 (unsigned char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 7;
signed short v74 = -4;
unsigned int v73 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 1;
unsigned int v78 = 5U;
unsigned short v77 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v80;
unsigned short v81;
signed int v82;
unsigned short v83;
v80 = 4U - 0U;
v81 = v77 - v77;
v82 = 1 + -3;
v83 = v25 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 4: 
{
signed char v84;
unsigned int v85;
v84 = v79 + -3;
v85 = v17 (v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
{
unsigned int v86;
signed short v87;
unsigned char v88;
v86 = v78 + v78;
v87 = 0 - 0;
v88 = v29 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 8: 
{
signed short v89;
signed int v90;
unsigned int v91;
v89 = -2 - 3;
v90 = 2 + 3;
v91 = v9 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}
