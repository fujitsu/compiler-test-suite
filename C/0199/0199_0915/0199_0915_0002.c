#include <stdlib.h>
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
signed char v5 (signed short, signed short);
signed char (*v6) (signed short, signed short) = v5;
extern void v7 (signed int, signed char, signed short);
extern void (*v8) (signed int, signed char, signed short);
signed int v9 (unsigned short, unsigned int, unsigned char);
signed int (*v10) (unsigned short, unsigned int, unsigned char) = v9;
signed char v11 (signed short, unsigned char);
signed char (*v12) (signed short, unsigned char) = v11;
extern unsigned char v13 (signed short, signed int, unsigned char);
extern unsigned char (*v14) (signed short, signed int, unsigned char);
extern unsigned int v15 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, signed char, unsigned int, unsigned char);
static void v17 (void);
static void (*v18) (void) = v17;
extern signed int v19 (signed int, unsigned char, signed int);
extern signed int (*v20) (signed int, unsigned char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (signed int, signed int, signed int);
extern signed int (*v24) (signed int, signed int, signed int);
extern unsigned char v25 (signed short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 0U;
signed char v62 = -2;
unsigned int v61 = 7U;

static void v17 (void)
{
{
for (;;) {
signed char v66 = -3;
signed int v65 = 3;
unsigned char v64 = 0;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed char v11 (signed short v67, unsigned char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 3;
signed int v70 = -3;
signed char v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v72, unsigned int v73, unsigned char v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 1;
unsigned short v76 = 1;
unsigned short v75 = 4;
trace++;
switch (trace)
{
case 1: 
{
v17 ();
}
break;
case 3: 
{
v17 ();
}
break;
case 5: 
{
v17 ();
}
break;
case 7: 
{
v17 ();
}
break;
case 9: 
{
v17 ();
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed char v5 (signed short v78, signed short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -3;
signed char v81 = 1;
unsigned int v80 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
