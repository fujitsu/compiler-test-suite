#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned short);
unsigned char (*v2) (unsigned int, unsigned short) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (signed short, signed short, unsigned int);
extern unsigned short (*v6) (signed short, signed short, unsigned int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
signed char v11 (unsigned short, unsigned char, unsigned short);
signed char (*v12) (unsigned short, unsigned char, unsigned short) = v11;
static signed int v13 (unsigned short);
static signed int (*v14) (unsigned short) = v13;
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern unsigned short v17 (unsigned short, signed int);
extern unsigned short (*v18) (unsigned short, signed int);
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned int, signed int, signed short);
extern signed short (*v22) (signed short, unsigned int, signed int, signed short);
void v23 (signed short);
void (*v24) (signed short) = v23;
extern unsigned short v25 (signed short, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (signed char, unsigned char, signed char);
extern void (*v30) (signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v61 = 2;
unsigned char v60 = 1;
unsigned int v59 = 6U;

void v23 (signed short v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 6;
unsigned int v64 = 4U;
unsigned short v63 = 4;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
{
unsigned short v66;
signed int v67;
unsigned short v68;
v66 = v63 + v63;
v67 = 2 + 3;
v68 = v17 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static signed int v13 (unsigned short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 1;
unsigned char v71 = 6;
unsigned int v70 = 4U;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v73;
signed int v74;
unsigned short v75;
v73 = v69 - v69;
v74 = 2 + -4;
v75 = v17 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 17: 
return -2;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v76, unsigned char v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 1;
signed char v80 = 1;
unsigned short v79 = 5;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v82;
unsigned int v83;
unsigned short v84;
v82 = 4 - 2;
v83 = 5U - 5U;
v84 = v19 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 14: 
return v80;
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v85, unsigned short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 0;
unsigned char v88 = 4;
unsigned char v87 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v90;
signed int v91;
v90 = v86 + v86;
v91 = v13 (v90);
history[history_index++] = (int)v91;
}
break;
case 18: 
return 3;
default: abort ();
}
}
}
}
