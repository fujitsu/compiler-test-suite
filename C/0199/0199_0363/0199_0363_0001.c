#include <stdlib.h>
extern signed int v1 (signed short, signed int, signed int);
extern signed int (*v2) (signed short, signed int, signed int);
extern signed short v3 (signed int, unsigned char, unsigned int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, unsigned int, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
unsigned char v9 (unsigned int, unsigned char, unsigned short);
unsigned char (*v10) (unsigned int, unsigned char, unsigned short) = v9;
extern signed short v11 (signed char, unsigned short, unsigned char, unsigned int);
extern signed short (*v12) (signed char, unsigned short, unsigned char, unsigned int);
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned int v17 (signed char, unsigned int, signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int, signed char, unsigned int);
signed int v19 (unsigned char, unsigned short, signed char, unsigned char);
signed int (*v20) (unsigned char, unsigned short, signed char, unsigned char) = v19;
unsigned int v21 (signed char, signed int);
unsigned int (*v22) (signed char, signed int) = v21;
extern signed short v23 (signed int, unsigned short, signed int, unsigned short);
extern signed short (*v24) (signed int, unsigned short, signed int, unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, signed int);
extern unsigned short (*v28) (unsigned int, signed short, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = 1;
signed char v69 = 2;
signed short v68 = 2;

unsigned int v21 (signed char v71, signed int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 1;
unsigned char v74 = 3;
signed short v73 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v76;
unsigned short v77;
signed int v78;
unsigned short v79;
signed short v80;
v76 = v72 + -1;
v77 = 3 - 0;
v78 = 1 + v72;
v79 = 0 - v75;
v80 = v23 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 6: 
return 6U;
default: abort ();
}
}
}
}

signed int v19 (unsigned char v81, unsigned short v82, signed char v83, unsigned char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 3;
unsigned int v86 = 7U;
signed int v85 = -4;
trace++;
switch (trace)
{
case 11: 
return v85;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v88, unsigned char v89, unsigned short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 3;
unsigned short v92 = 4;
unsigned short v91 = 2;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}
