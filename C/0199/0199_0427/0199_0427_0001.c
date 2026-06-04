#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int, unsigned short);
extern void (*v6) (unsigned int, unsigned short);
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
extern unsigned int v9 (unsigned int, unsigned short);
extern unsigned int (*v10) (unsigned int, unsigned short);
extern void v11 (unsigned int, unsigned short, signed int);
extern void (*v12) (unsigned int, unsigned short, signed int);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned short v21 (unsigned char);
unsigned short (*v22) (unsigned char) = v21;
extern unsigned short v23 (unsigned short, signed char, unsigned char);
extern unsigned short (*v24) (unsigned short, signed char, unsigned char);
unsigned int v25 (signed char, signed short);
unsigned int (*v26) (signed char, signed short) = v25;
static unsigned int v27 (void);
static unsigned int (*v28) (void) = v27;
extern signed char v29 (signed short, unsigned short, signed char, unsigned char);
extern signed char (*v30) (signed short, unsigned short, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v46 = -1;
signed short v45 = -2;
unsigned short v44 = 1;

static unsigned int v27 (void)
{
{
for (;;) {
unsigned int v49 = 5U;
signed short v48 = -3;
unsigned short v47 = 2;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v50;
unsigned short v51;
signed int v52;
v50 = v49 + 0U;
v51 = v47 + 7;
v52 = -4 + -4;
v11 (v50, v51, v52);
}
break;
case 9: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v25 (signed char v53, signed short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 0;
unsigned int v56 = 5U;
signed int v55 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed short v58;
unsigned short v59;
signed char v60;
unsigned char v61;
signed char v62;
v58 = v54 - -1;
v59 = 3 - 0;
v60 = -1 - v53;
v61 = v57 + 3;
v62 = v29 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 6: 
{
unsigned int v63;
v63 = v27 ();
history[history_index++] = (int)v63;
}
break;
case 10: 
return v56;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -1;
signed int v66 = -1;
signed int v65 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned short v70 = 5;
unsigned int v69 = 4U;
unsigned int v68 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
