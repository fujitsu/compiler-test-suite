#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, unsigned short);
extern unsigned char (*v2) (unsigned char, signed int, unsigned short);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
unsigned short v11 (unsigned short);
unsigned short (*v12) (unsigned short) = v11;
extern unsigned char v13 (unsigned short, signed char);
extern unsigned char (*v14) (unsigned short, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, unsigned char, signed int);
extern signed char (*v20) (signed short, unsigned char, signed int);
static unsigned char v21 (unsigned short, unsigned short, signed int);
static unsigned char (*v22) (unsigned short, unsigned short, signed int) = v21;
extern void v23 (signed short, unsigned char, unsigned int);
extern void (*v24) (signed short, unsigned char, unsigned int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed char, signed char, signed int);
extern signed int (*v28) (signed short, signed char, signed char, signed int);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v42 = 5U;
signed int v41 = -1;
signed int v40 = -4;

static unsigned char v21 (unsigned short v43, unsigned short v44, signed int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 7;
unsigned int v47 = 0U;
signed short v46 = -2;
trace++;
switch (trace)
{
case 4: 
{
signed short v49;
unsigned char v50;
unsigned int v51;
v49 = v46 - v46;
v50 = v48 + 7;
v51 = v47 + v47;
v23 (v49, v50, v51);
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v52)
{
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 2;
signed char v54 = 0;
unsigned short v53 = 7;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v56;
unsigned short v57;
signed int v58;
unsigned char v59;
v56 = v53 - v52;
v57 = v53 - 1;
v58 = 3 - 3;
v59 = v21 (v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 15: 
return 5;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
signed int v62 = -2;
unsigned short v61 = 7;
unsigned int v60 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
