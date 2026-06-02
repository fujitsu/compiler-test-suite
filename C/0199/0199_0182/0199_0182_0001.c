#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern signed int v3 (signed char, signed char, unsigned int);
extern signed int (*v4) (signed char, signed char, unsigned int);
extern unsigned short v5 (unsigned int, signed short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned int, signed short, signed int, unsigned int);
extern unsigned char v7 (signed int, signed int, signed int, signed char);
extern unsigned char (*v8) (signed int, signed int, signed int, signed char);
extern unsigned short v9 (unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, signed short);
extern unsigned char v13 (signed short, unsigned char, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char, unsigned char);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern unsigned int v17 (signed int, signed char, signed int, unsigned char);
extern unsigned int (*v18) (signed int, signed char, signed int, unsigned char);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
signed char v21 (unsigned int);
signed char (*v22) (unsigned int) = v21;
extern unsigned char v23 (unsigned int, unsigned int, signed char, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned int, signed char, unsigned short);
extern void v25 (unsigned short, unsigned short);
extern void (*v26) (unsigned short, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed int v29 (unsigned short, unsigned char, unsigned char);
signed int (*v30) (unsigned short, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v59 = 2;
unsigned int v58 = 4U;
unsigned char v57 = 0;

signed int v29 (unsigned short v60, unsigned char v61, unsigned char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 0;
unsigned int v64 = 5U;
signed int v63 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 5U;
unsigned short v68 = 3;
signed int v67 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned short v72 = 6;
signed char v71 = 2;
unsigned char v70 = 5;
trace++;
switch (trace)
{
case 6: 
{
signed int v73;
v73 = v27 ();
history[history_index++] = (int)v73;
}
break;
case 8: 
{
signed int v74;
v74 = v27 ();
history[history_index++] = (int)v74;
}
break;
case 10: 
{
signed int v75;
v75 = v27 ();
history[history_index++] = (int)v75;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
