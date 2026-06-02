#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
signed int v3 (unsigned char, unsigned char, signed int);
signed int (*v4) (unsigned char, unsigned char, signed int) = v3;
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern signed int v11 (signed int, unsigned int);
extern signed int (*v12) (signed int, unsigned int);
unsigned int v13 (unsigned short, unsigned int, signed int);
unsigned int (*v14) (unsigned short, unsigned int, signed int) = v13;
extern signed int v15 (unsigned char, signed char, signed int, signed int);
extern signed int (*v16) (unsigned char, signed char, signed int, signed int);
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
signed short v19 (unsigned int, unsigned short, signed short);
signed short (*v20) (unsigned int, unsigned short, signed short) = v19;
extern unsigned short v21 (signed short, unsigned int, signed short);
extern unsigned short (*v22) (signed short, unsigned int, signed short);
extern unsigned char v23 (signed short, unsigned char, signed char);
extern unsigned char (*v24) (signed short, unsigned char, signed char);
extern unsigned int v25 (signed int, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern void v29 (unsigned short, unsigned short);
extern void (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 0U;
unsigned short v55 = 5;
unsigned int v54 = 2U;

signed short v19 (unsigned int v57, unsigned short v58, signed short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = 3;
signed short v61 = 3;
signed int v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v63, unsigned int v64, signed int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -2;
unsigned short v67 = 3;
unsigned int v66 = 6U;
trace++;
switch (trace)
{
case 8: 
return v64;
case 10: 
return v66;
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed short v71 = 1;
signed short v70 = -3;
unsigned int v69 = 4U;
trace++;
switch (trace)
{
case 1: 
{
signed short v72;
unsigned int v73;
signed short v74;
unsigned short v75;
v72 = 0 - v71;
v73 = v69 - 6U;
v74 = v71 - v71;
v75 = v21 (v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 3: 
return 4;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v76, unsigned char v77, signed int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 4;
signed short v80 = -3;
signed int v79 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
