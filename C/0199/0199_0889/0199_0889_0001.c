#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char);
extern unsigned char (*v2) (unsigned short, signed char);
unsigned int v3 (signed short, signed int);
unsigned int (*v4) (signed short, signed int) = v3;
extern unsigned short v5 (unsigned short, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed char, signed short);
extern signed short v7 (signed int, unsigned short, unsigned short);
extern signed short (*v8) (signed int, unsigned short, unsigned short);
unsigned char v9 (unsigned int, signed char, signed char, signed short);
unsigned char (*v10) (unsigned int, signed char, signed char, signed short) = v9;
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned int, signed char, signed char, signed short);
extern signed char (*v16) (unsigned int, signed char, signed char, signed short);
signed int v17 (unsigned char, signed short);
signed int (*v18) (unsigned char, signed short) = v17;
extern signed short v19 (unsigned int, signed char, signed short);
extern signed short (*v20) (unsigned int, signed char, signed short);
extern void v21 (signed short, signed char, signed short);
extern void (*v22) (signed short, signed char, signed short);
extern void v23 (unsigned short, unsigned int, unsigned short);
extern void (*v24) (unsigned short, unsigned int, unsigned short);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
static void v29 (void);
static void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v50 = 1;
unsigned int v49 = 0U;
signed char v48 = 0;

static void v29 (void)
{
{
for (;;) {
unsigned char v53 = 1;
unsigned int v52 = 4U;
signed short v51 = -3;
trace++;
switch (trace)
{
case 4: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

signed int v17 (unsigned char v54, signed short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned int v58 = 5U;
unsigned char v57 = 6;
unsigned char v56 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v59, signed char v60, signed char v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 4U;
signed char v64 = -4;
signed int v63 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 2;
unsigned int v69 = 0U;
signed int v68 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v71;
signed char v72;
signed short v73;
signed short v74;
v71 = v69 + 7U;
v72 = 2 - 0;
v73 = 1 - -4;
v74 = v19 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 3: 
{
v29 ();
}
break;
case 5: 
{
unsigned int v75;
signed char v76;
signed short v77;
signed short v78;
v75 = v69 + 2U;
v76 = -4 + -4;
v77 = v66 + v66;
v78 = v19 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 7: 
{
v29 ();
}
break;
case 9: 
{
signed short v79;
signed char v80;
signed short v81;
v79 = 0 - v66;
v80 = -3 + -3;
v81 = v66 - v66;
v21 (v79, v80, v81);
}
break;
case 13: 
return v69;
default: abort ();
}
}
}
}
