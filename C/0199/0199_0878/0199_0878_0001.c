#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned short);
extern unsigned int (*v4) (unsigned short, unsigned short);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
signed int v9 (unsigned int, signed short);
signed int (*v10) (unsigned int, signed short) = v9;
extern void v11 (signed char, signed short, signed short);
extern void (*v12) (signed char, signed short, signed short);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern void v19 (unsigned char, unsigned char);
extern void (*v20) (unsigned char, unsigned char);
signed char v21 (unsigned int, unsigned int, unsigned int, unsigned int);
signed char (*v22) (unsigned int, unsigned int, unsigned int, unsigned int) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (signed short, unsigned char, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char, unsigned char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
unsigned short v29 (unsigned short);
unsigned short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v58 = 1;
unsigned short v57 = 6;
signed char v56 = -4;

unsigned short v29 (unsigned short v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 0;
signed short v61 = -1;
signed char v60 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed char v63;
signed short v64;
signed short v65;
v63 = v60 - v60;
v64 = v61 + -3;
v65 = -4 + -2;
v11 (v63, v64, v65);
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v66, unsigned int v67, unsigned int v68, unsigned int v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -3;
signed char v71 = -4;
unsigned short v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v73, signed short v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 2;
signed short v76 = -3;
unsigned short v75 = 6;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v78;
v78 = v23 ();
history[history_index++] = (int)v78;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned char v81 = 1;
unsigned int v80 = 6U;
unsigned short v79 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
