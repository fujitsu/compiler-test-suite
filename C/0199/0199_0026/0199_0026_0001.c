#include <stdlib.h>
unsigned int v1 (unsigned char);
unsigned int (*v2) (unsigned char) = v1;
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned int v7 (signed int, unsigned short, unsigned short);
extern unsigned int (*v8) (signed int, unsigned short, unsigned short);
static unsigned int v9 (void);
static unsigned int (*v10) (void) = v9;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed short v13 (signed char, unsigned short);
extern signed short (*v14) (signed char, unsigned short);
extern void v15 (unsigned int, unsigned int);
extern void (*v16) (unsigned int, unsigned int);
extern unsigned int v17 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v18) (signed int, signed char, unsigned int, unsigned short);
extern void v19 (signed int, unsigned int, unsigned int);
extern void (*v20) (signed int, unsigned int, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed int, signed short, signed int, signed int);
extern unsigned int (*v24) (signed int, signed short, signed int, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
static void v27 (void);
static void (*v28) (void) = v27;
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = 3;
unsigned char v61 = 6;
signed short v60 = -3;

static void v27 (void)
{
{
for (;;) {
unsigned short v65 = 6;
signed short v64 = -3;
signed int v63 = -2;
trace++;
switch (trace)
{
case 3: 
return;
case 7: 
return;
default: abort ();
}
}
}
}

static unsigned int v9 (void)
{
{
for (;;) {
signed int v68 = 3;
signed short v67 = 0;
signed int v66 = -3;
trace++;
switch (trace)
{
case 5: 
return 2U;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 7;
signed short v71 = -2;
unsigned char v70 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v73;
signed char v74;
v73 = 4 + 0;
v74 = v5 (v73);
history[history_index++] = (int)v74;
}
break;
case 2: 
{
v27 ();
}
break;
case 4: 
{
unsigned int v75;
v75 = v9 ();
history[history_index++] = (int)v75;
}
break;
case 6: 
{
v27 ();
}
break;
case 8: 
{
unsigned int v76;
unsigned int v77;
v76 = 6U - 2U;
v77 = 3U - 3U;
v15 (v76, v77);
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}
