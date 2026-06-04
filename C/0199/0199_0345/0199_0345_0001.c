#include <stdlib.h>
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed short v5 (signed int, signed int, signed short, unsigned short);
extern signed short (*v6) (signed int, signed int, signed short, unsigned short);
unsigned char v7 (unsigned short, unsigned short, unsigned int);
unsigned char (*v8) (unsigned short, unsigned short, unsigned int) = v7;
extern void v9 (signed char);
extern void (*v10) (signed char);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned char v13 (signed char, unsigned char);
extern unsigned char (*v14) (signed char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
static void v21 (unsigned int, unsigned int, unsigned short, signed short);
static void (*v22) (unsigned int, unsigned int, unsigned short, signed short) = v21;
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v28) (unsigned char, unsigned char, unsigned char);
void v29 (unsigned int, unsigned int, signed char, signed short);
void (*v30) (unsigned int, unsigned int, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v63 = 6;
unsigned char v62 = 2;
signed short v61 = -3;

void v29 (unsigned int v64, unsigned int v65, signed char v66, signed short v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 7;
signed short v69 = 0;
unsigned char v68 = 2;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v71;
unsigned char v72;
unsigned char v73;
unsigned int v74;
v71 = 2 + 3;
v72 = v68 + 5;
v73 = 6 - v68;
v74 = v27 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

static void v21 (unsigned int v75, unsigned int v76, unsigned short v77, signed short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -3;
signed short v80 = 0;
signed int v79 = -3;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v82;
signed short v83;
v82 = v75 - v75;
v83 = v23 (v82);
history[history_index++] = (int)v83;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned char v86 = 3;
unsigned short v85 = 5;
unsigned char v84 = 6;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v87;
unsigned int v88;
unsigned short v89;
signed short v90;
v87 = 3U - 7U;
v88 = 3U + 0U;
v89 = v85 - 6;
v90 = -3 + -2;
v21 (v87, v88, v89, v90);
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v91, unsigned short v92, unsigned int v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 3;
unsigned int v95 = 4U;
signed short v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
