#include <stdlib.h>
signed int v1 (signed short, unsigned short, unsigned int);
signed int (*v2) (signed short, unsigned short, unsigned int) = v1;
extern unsigned char v3 (signed char, signed int);
extern unsigned char (*v4) (signed char, signed int);
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (unsigned short, unsigned short, signed short);
extern unsigned char (*v14) (unsigned short, unsigned short, signed short);
extern void v15 (signed short, unsigned short, signed short);
extern void (*v16) (signed short, unsigned short, signed short);
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
unsigned char v19 (unsigned short, unsigned short, unsigned short, signed short);
unsigned char (*v20) (unsigned short, unsigned short, unsigned short, signed short) = v19;
extern unsigned int v21 (signed char, unsigned short, signed char, signed char);
extern unsigned int (*v22) (signed char, unsigned short, signed char, signed char);
extern void v23 (signed short, signed int, unsigned char);
extern void (*v24) (signed short, signed int, unsigned char);
extern signed char v25 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v26) (signed char, unsigned int, unsigned int, signed int);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern unsigned short v29 (unsigned short, signed short, signed char, signed short);
extern unsigned short (*v30) (unsigned short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v55 = 1;
unsigned short v54 = 4;
signed int v53 = 0;

unsigned int v27 (void)
{
{
for (;;) {
signed int v58 = -3;
unsigned int v57 = 0U;
unsigned char v56 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned short v59, unsigned short v60, unsigned short v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = -1;
unsigned short v64 = 1;
signed int v63 = 0;
trace++;
switch (trace)
{
case 4: 
return 7;
case 6: 
return 1;
default: abort ();
}
}
}
}

signed int v1 (signed short v66, unsigned short v67, unsigned int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -1;
unsigned char v70 = 6;
signed short v69 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v72;
signed short v73;
signed char v74;
signed short v75;
unsigned short v76;
v72 = 6 - v67;
v73 = v66 - v69;
v74 = 3 - 2;
v75 = v66 - 0;
v76 = v29 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 14: 
return v71;
default: abort ();
}
}
}
}
