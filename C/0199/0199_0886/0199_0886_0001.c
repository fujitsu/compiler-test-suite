#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned char, unsigned char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned char, unsigned char, unsigned short);
signed char v3 (unsigned int, signed char, signed char);
signed char (*v4) (unsigned int, signed char, signed char) = v3;
static unsigned char v5 (unsigned char, unsigned int, signed char);
static unsigned char (*v6) (unsigned char, unsigned int, signed char) = v5;
extern unsigned int v7 (unsigned short, signed int, signed short, unsigned char);
extern unsigned int (*v8) (unsigned short, signed int, signed short, unsigned char);
unsigned int v9 (unsigned char, signed char, signed char);
unsigned int (*v10) (unsigned char, signed char, signed char) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern signed int v13 (signed char, unsigned int, signed char);
extern signed int (*v14) (signed char, unsigned int, signed char);
extern signed short v15 (unsigned int, unsigned int, unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned int, unsigned int, unsigned short);
extern void v17 (signed short, unsigned char);
extern void (*v18) (signed short, unsigned char);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned int v21 (signed int, unsigned char, unsigned short, signed int);
extern unsigned int (*v22) (signed int, unsigned char, unsigned short, signed int);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern signed short v25 (signed int, signed char, signed short, signed short);
extern signed short (*v26) (signed int, signed char, signed short, signed short);
unsigned char v27 (unsigned short);
unsigned char (*v28) (unsigned short) = v27;
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v55 = 1;
unsigned short v54 = 5;
signed int v53 = 0;

unsigned char v27 (unsigned short v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 0U;
signed int v58 = -4;
unsigned short v57 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v60;
unsigned int v61;
signed char v62;
unsigned char v63;
v60 = 6 + 5;
v61 = 2U + 7U;
v62 = -1 - 3;
v63 = v5 (v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v64, signed char v65, signed char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 0U;
unsigned char v68 = 3;
signed char v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (unsigned char v70, unsigned int v71, signed char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 7;
signed int v74 = -3;
signed short v73 = -4;
trace++;
switch (trace)
{
case 2: 
{
v11 ();
}
break;
case 4: 
{
v11 ();
}
break;
case 6: 
{
v11 ();
}
break;
case 8: 
{
v11 ();
}
break;
case 10: 
{
v11 ();
}
break;
case 12: 
return v75;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v76, signed char v77, signed char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 2;
signed int v80 = -3;
unsigned char v79 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
