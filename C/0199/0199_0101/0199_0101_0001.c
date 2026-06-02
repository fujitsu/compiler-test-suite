#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern unsigned char v3 (signed short, unsigned short, signed char);
extern unsigned char (*v4) (signed short, unsigned short, signed char);
extern void v7 (signed int);
extern void (*v8) (signed int);
void v11 (signed short, unsigned int, signed char);
void (*v12) (signed short, unsigned int, signed char) = v11;
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char, signed char, unsigned short);
extern signed char (*v20) (signed char, signed char, unsigned short);
signed short v21 (void);
signed short (*v22) (void) = v21;
static void v23 (unsigned int);
static void (*v24) (unsigned int) = v23;
extern signed short v25 (unsigned short, signed int);
extern signed short (*v26) (unsigned short, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed int, unsigned char, unsigned int);
extern void (*v30) (signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v40 = -1;
signed char v39 = 2;
unsigned int v38 = 2U;

static void v23 (unsigned int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 2;
unsigned short v43 = 5;
signed int v42 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v45;
v45 = v27 ();
history[history_index++] = (int)v45;
}
break;
case 4: 
{
unsigned short v46;
v46 = v27 ();
history[history_index++] = (int)v46;
}
break;
case 6: 
return;
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned char v49 = 2;
unsigned char v48 = 0;
signed char v47 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v50;
v50 = 2U - 1U;
v23 (v50);
}
break;
case 7: 
{
signed short v51;
unsigned short v52;
signed char v53;
unsigned char v54;
v51 = 3 - -1;
v52 = 7 + 6;
v53 = v47 + -1;
v54 = v3 (v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned char v57 = 2;
signed char v56 = -3;
unsigned int v55 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v58, unsigned int v59, signed char v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 3;
signed short v62 = -4;
unsigned int v61 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
