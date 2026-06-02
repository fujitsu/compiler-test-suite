#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned char, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned char, signed char);
extern signed int v3 (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, unsigned short, unsigned int);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
static unsigned short v9 (unsigned char, signed short, signed short);
static unsigned short (*v10) (unsigned char, signed short, signed short) = v9;
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned char v13 (signed char);
extern unsigned char (*v14) (signed char);
unsigned short v15 (unsigned int, unsigned char, signed int, signed char);
unsigned short (*v16) (unsigned int, unsigned char, signed int, signed char) = v15;
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern unsigned int v25 (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned int (*v26) (unsigned int, unsigned int, unsigned int, signed int);
signed char v27 (unsigned int);
signed char (*v28) (unsigned int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 2;
unsigned char v56 = 6;
signed short v55 = 0;

signed char v27 (unsigned int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 4;
unsigned int v60 = 2U;
unsigned short v59 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned short v64 = 1;
unsigned int v63 = 1U;
signed short v62 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v65;
unsigned int v66;
unsigned int v67;
signed int v68;
unsigned int v69;
v65 = 3U + 6U;
v66 = v63 + v63;
v67 = v63 + 2U;
v68 = -4 - 3;
v69 = v25 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 7: 
{
unsigned char v70;
signed short v71;
signed short v72;
unsigned short v73;
v70 = 0 - 4;
v71 = 1 + v62;
v72 = -2 + v62;
v73 = v9 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 9: 
return v62;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v74, unsigned char v75, signed int v76, signed char v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -3;
unsigned char v79 = 0;
unsigned int v78 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v9 (unsigned char v81, signed short v82, signed short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 5U;
unsigned int v85 = 1U;
signed char v84 = 1;
trace++;
switch (trace)
{
case 8: 
return 2;
default: abort ();
}
}
}
}
