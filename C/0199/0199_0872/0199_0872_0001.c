#include <stdlib.h>
signed short v1 (signed char);
signed short (*v2) (signed char) = v1;
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern signed int v5 (unsigned short, signed short, signed int, unsigned short);
extern signed int (*v6) (unsigned short, signed short, signed int, unsigned short);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (signed short, unsigned short, unsigned char);
extern signed char (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned int v17 (signed int, unsigned char, unsigned int, signed char);
extern unsigned int (*v18) (signed int, unsigned char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, signed char, unsigned short, signed short);
extern void (*v24) (unsigned short, signed char, unsigned short, signed short);
signed short v25 (unsigned char, signed char, signed char, signed char);
signed short (*v26) (unsigned char, signed char, signed char, signed char) = v25;
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v47 = 3;
unsigned short v46 = 5;
signed int v45 = -1;

signed short v25 (unsigned char v48, signed char v49, signed char v50, signed char v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 6U;
signed char v53 = -1;
unsigned int v52 = 5U;
trace++;
switch (trace)
{
case 10: 
return -2;
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned short v57 = 1;
signed short v56 = -4;
signed short v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 7;
unsigned int v60 = 5U;
signed char v59 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v62;
signed char v63;
v62 = 1 - 0;
v63 = v15 (v62);
history[history_index++] = (int)v63;
}
break;
case 2: 
{
v9 ();
}
break;
case 8: 
{
unsigned short v64;
unsigned char v65;
v64 = v61 + 6;
v65 = v7 (v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
