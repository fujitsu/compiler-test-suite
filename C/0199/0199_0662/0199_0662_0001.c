#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned char, signed char);
unsigned int (*v2) (unsigned char, unsigned char, signed char) = v1;
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned int v5 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v6) (signed short, signed short, unsigned char, signed short);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned short v15 (unsigned short, unsigned short, unsigned char);
unsigned short (*v16) (unsigned short, unsigned short, unsigned char) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
static signed int v19 (void);
static signed int (*v20) (void) = v19;
extern void v21 (signed int, unsigned char);
extern void (*v22) (signed int, unsigned char);
extern void v23 (unsigned char, unsigned short, unsigned char, unsigned int);
extern void (*v24) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char v25 (signed int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned short);
extern unsigned char v27 (unsigned short);
extern unsigned char (*v28) (unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = 2;
signed char v44 = 3;
unsigned short v43 = 5;

static signed int v19 (void)
{
{
for (;;) {
unsigned char v48 = 1;
signed char v47 = 0;
unsigned short v46 = 5;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v49, unsigned short v50, unsigned char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 1;
signed int v53 = 0;
signed short v52 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v55, unsigned char v56, signed char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = -4;
signed short v59 = -2;
signed short v58 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v61;
v61 = v19 ();
history[history_index++] = (int)v61;
}
break;
case 2: 
{
unsigned int v62;
v62 = v13 ();
history[history_index++] = (int)v62;
}
break;
case 16: 
return 0U;
default: abort ();
}
}
}
}
